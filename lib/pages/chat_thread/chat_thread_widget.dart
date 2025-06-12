import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_thread_model.dart';

class ChatThreadWidget extends StatefulWidget {
  const ChatThreadWidget({
    super.key,
    required this.chatId,
    required this.otherUserName,
    this.otherUserAvatarUrl,
    required this.otherUserId,
  });

  final String chatId;
  final String otherUserName;
  final String? otherUserAvatarUrl;
  final String otherUserId;

  static const String routeName = 'ChatThread';
  // Example: /chatThread/:chatId - other params via query or extra
  static String routePath = '/chatThread/:chatId';


  @override
  State<ChatThreadWidget> createState() => _ChatThreadWidgetState();
}

class _ChatThreadWidgetState extends State<ChatThreadWidget> {
  late ChatThreadModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatThreadModel());
    _markMessagesAsRead(); // Initial attempt to mark messages as read
  }

  // --- Mark messages as read ---
  // This needs to be called when the widget loads and potentially when new messages arrive.
  // For new messages, it's better to handle this within the StreamBuilder's data handling.
  Future<void> _markMessagesAsRead() async {
    if (widget.chatId.isEmpty || currentUserReference == null) return;

    final chatRef = FirebaseFirestore.instance.collection('chats').doc(widget.chatId);

    // Update the chat document's read status for the current user
    // Determine if current user is userA or userB based on participants in chatDoc (if available)
    // This part is simplified as we don't have the full chatDoc here without another read.
    // A more robust way is to fetch the chatDoc once, determine userA/userB, then update.
    // Or, have specific fields like `user1Id`, `user1Read`, `user2Id`, `user2Read`.
    // For now, assuming a simplified structure or that this might be handled by a cloud function
    // or when the message is sent. The most direct client-side update:

    final chatSnapshot = await chatRef.get();
    if (chatSnapshot.exists) {
        final chatData = chatSnapshot.data() as Map<String, dynamic>;
        if (chatData['userA'] == currentUserReference) {
            chatRef.update({'userARead': true});
        } else if (chatData['userB'] == currentUserReference) {
            chatRef.update({'userBRead': true});
        }
    }


    // Update messages subcollection (less critical if parent chat doc handles unread count for badge)
    // This can be performance intensive if there are many unread messages.
    // Consider if this is truly needed on the client or if parent doc update is enough.
    /*
    final messagesQuery = chatRef.collection('messages')
        .where('receiverId', isEqualTo: currentUserReference!.id)
        .where('isRead', isEqualTo: false);

    final messagesSnapshot = await messagesQuery.get();
    WriteBatch batch = FirebaseFirestore.instance.batch();
    for (var doc in messagesSnapshot.docs) {
      batch.update(doc.reference, {'isRead': true});
    }
    await batch.commit();
    */
  }

  // --- Send message ---
  Future<void> _sendMessage() async {
    if (_model.messageController.text.isEmpty || currentUserReference == null) {
      return;
    }

    final messageText = _model.messageController.text;
    _model.messageController.clear();

    final chatRef = FirebaseFirestore.instance.collection('chats').doc(widget.chatId);
    final messagesCollection = chatRef.collection('messages');

    // 1. Add new message to subcollection
    await messagesCollection.add({
      'senderId': currentUserReference!.id,
      'receiverId': widget.otherUserId,
      'text': messageText,
      'timestamp': FieldValue.serverTimestamp(),
      'isRead': false, // Default to false, will be updated by receiver
    });

    // 2. Update parent chat document
    // Determine which user's read status to update (the other user's)
    // This requires knowing if the current user is 'userA' or 'userB' in the 'chats' doc.
    // For simplicity, we'll fetch the chat doc once to determine this.
    // In a real app, this might be passed or stored in the model if fetched earlier.
    DocumentSnapshot chatDoc = await chatRef.get();
    Map<String, dynamic> updateData = {
      'lastMessage': messageText,
      'lastMessageTimestamp': FieldValue.serverTimestamp(),
      'lastMessageSenderId': currentUserReference!.id,
    };

    if (chatDoc.exists) {
        final chatData = chatDoc.data() as Map<String,dynamic>;
      if (chatData['userA'] == currentUserReference) {
        updateData['userBRead'] = false; // Other user (B) has not read this new message
        updateData['userARead'] = true;  // Sending user (A) has "read" their own message
      } else if (chatData['userB'] == currentUserReference) {
        updateData['userARead'] = false;  // Other user (A) has not read this new message
        updateData['userBRead'] = true; // Sending user (B) has "read" their own message
      } else {
        // Fallback if userA/userB not set as expected, or if participantIds is used
        // This part needs to align with how you identify participants in the ChatsRecord
        // For now, we'll assume userA/userB are primary identifiers for read status fields
      }
    }

    await chatRef.update(updateData);

    // Scroll to bottom
     WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            0.0,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
  }


  @override
  void dispose() {
    _model.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: true, // Shows back button
        leading: widget.otherUserAvatarUrl != null && widget.otherUserAvatarUrl!.isNotEmpty
            ? Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.otherUserAvatarUrl!),
                  onBackgroundImageError: (_, __) { // Handle broken image links gracefully
                     // Image.asset('assets/images/default_avatar.png'); // Placeholder if you have one
                  },
                ),
              )
            : null,
        title: Text(
          widget.otherUserName,
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                color: Colors.white,
                fontSize: 20.0, // Adjusted for typical AppBar title size
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).headlineMediumFamily),
              ),
        ),
        elevation: 2.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<List<MessagesRecord>>(
                stream: queryMessagesRecord(
                  queryBuilder: (messagesRecord) => messagesRecord
                      .orderBy('timestamp', descending: false), // Fetch in ascending for UI reverse
                  parent: FirebaseFirestore.instance.collection('chats').doc(widget.chatId),
                ),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (!snapshot.hasData) {
                    return Center(
                        child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary),
                    ));
                  }
                  final messagesRecordList = snapshot.data!;

                  // Attempt to mark messages as read when new data comes in
                  // This is a common place to trigger this, but be mindful of write frequency
                  // _markMessagesAsRead(); // Re-evaluating best place for this. Consider after messages are built.


                  return ListView.builder(
                    controller: _scrollController,
                    padding: EdgeInsets.all(10.0),
                    reverse: true, // To show latest messages at the bottom
                    itemCount: messagesRecordList.length,
                    itemBuilder: (context, index) {
                      final message = messagesRecordList[messagesRecordList.length - 1 - index]; // Access in reverse
                      final isCurrentUserSender = message.senderId == currentUserReference?.id;

                      // Align chat bubbles
                      final bubbleAlignment = isCurrentUserSender
                          ? Alignment.centerRight
                          : Alignment.centerLeft;

                      final bubbleColor = isCurrentUserSender
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).secondaryBackground;

                      final textColor = isCurrentUserSender
                          ? FlutterFlowTheme.of(context).primaryBtnText
                          : FlutterFlowTheme.of(context).primaryText;

                      return Align(
                        alignment: bubbleAlignment,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
                          decoration: BoxDecoration(
                            color: bubbleColor,
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              )
                            ]
                          ),
                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                message.text,
                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                  color: textColor,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                message.timestamp != null ? DateFormat('h:mm a').format(message.timestamp!) : 'Sending...',
                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                  color: isCurrentUserSender ? FlutterFlowTheme.of(context).accent4 : FlutterFlowTheme.of(context).secondaryText,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            // Message Input Area
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, -2.0),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _model.messageController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(letterSpacing: 0.0),
                      maxLines: 5,
                      minLines: 1,
                      validator: _model.messageControllerValidator.asValidator(context),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
