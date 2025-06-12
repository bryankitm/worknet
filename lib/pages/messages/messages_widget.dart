import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart'; // Will be conditionally hidden
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago; // For relative timestamps
import 'messages_model.dart';
export 'messages_model.dart';

class MessagesWidget extends StatefulWidget {
  const MessagesWidget({super.key});

  static String routeName = 'Messages';
  static String routePath = '/messages';

  @override
  State<MessagesWidget> createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget> {
  late MessagesModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessagesModel());
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      title: 'Messages',
      color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          drawer: Container(
            width: MediaQuery.sizeOf(context).width * 0.7,
            child: Drawer(
              elevation: 16.0,
              child: wrapWithModel(
                model: _model.sideBarModel2,
                updateCallback: () => safeSetState(() {}),
                child: SideBarWidget(page: 'messages'),
              ),
            ),
          ),
          appBar: responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ) ? AppBar(
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  automaticallyImplyLeading: !responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ),
                  title: Text(
                    'Messages',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: Colors.white,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                  actions: [],
                  centerTitle: false,
                  elevation: 2.0,
                )
              : null,
          body: SafeArea(
            top: true,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  wrapWithModel(
                    model: _model.sideBarModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: SideBarWidget(page: 'messages'),
                  ),
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.749,
                    decoration: BoxDecoration(),
                    child: Column( // Changed Stack to Column
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false, // Hide HeaderWidget on phone/tablet
                          tablet: false,
                        ))
                          wrapWithModel(
                            model: _model.headerModel,
                            updateCallback: () => safeSetState(() {}),
                            child: HeaderWidget(),
                          ),
                        Expanded( // Make StreamBuilder fill remaining space
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15.0, responsiveVisibility(context: context, phone: false, tablet: false) ? 0.0 : 15.0 , 15.0, 15.0), // Adjust top padding
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     if (!responsiveVisibility(context: context, phone: false, tablet: false)) // Show title only if AppBar is not shown
                                      Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0), // Reduced top padding
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                child: Icon(
                                                  Icons.message_outlined,
                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                              Text(
                                                'Messages',
                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    Divider(
                                      thickness: 2.0,
                                      color: FlutterFlowTheme.of(context).alternate,
                                    ),
                                    Expanded( // Make StreamBuilder's child fill
                                      child: StreamBuilder<List<ChatsRecord>>(
                                        stream: queryChatsRecord(
                                          queryBuilder: (chatsRecord) => chatsRecord
                                              .where('participantIds', arrayContains: currentUserReference?.id)
                                              .orderBy('lastMessageTimestamp', descending: true),
                                        ),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasError) {
                                            return Center(child: Text('Error: ${snapshot.error}'));
                                          }
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: CircularProgressIndicator(
                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                    FlutterFlowTheme.of(context).primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final chatsRecordList = snapshot.data!;
                                          if (chatsRecordList.isEmpty) {
                                            return Center(
                                              child: Text(
                                                'You have no messages yet.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(letterSpacing: 0.0),
                                              ),
                                            );
                                          }

                                          return ListView.builder(
                                            padding: EdgeInsets.only(top: 8.0),
                                            shrinkWrap: true,
                                            itemCount: chatsRecordList.length,
                                            itemBuilder: (context, index) {
                                              final chatRecord = chatsRecordList[index];

                                              // Determine other participant
                                              ParticipantDataStruct? otherParticipant;
                                              String? otherParticipantName = 'Chat User';
                                              String? otherParticipantAvatar = 'https://t3.ftcdn.net/jpg/05/16/27/58/360_F_516275801_f3Fsp17x6HQK0xQgDQEELoTuERO4SsWV.jpg'; // Default avatar

                                              if (chatRecord.participantsData.isNotEmpty) {
                                                  final otherParticipantData = chatRecord.participantsData.firstWhere(
                                                      (p) => p.userId != currentUserReference?.id,
                                                      orElse: () => ParticipantDataStruct(userId: '', userName: 'Unknown', avatarUrl: ''), // Provide a default ParticipantDataStruct
                                                  );
                                                  if (otherParticipantData.userId.isNotEmpty) {
                                                      otherParticipantName = otherParticipantData.userName;
                                                      otherParticipantAvatar = otherParticipantData.avatarUrl;
                                                  }
                                              }

                                              bool isUnread = false;
                                              // Assuming current user is userA if chatRecord.userA == currentUserReference?.id
                                              // This logic needs to be robust based on your ChatsRecord structure for read status
                                              if (chatRecord.userA == currentUserReference) {
                                                isUnread = !chatRecord.userARead;
                                              } else if (chatRecord.userB == currentUserReference) {
                                                isUnread = !chatRecord.userBRead;
                                              }


                                              return Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0), // Divider between items
                                                child: InkWell(
                                                  splashColor: FlutterFlowTheme.of(context).primaryBackground,
                                                  onTap: () {
                                                    final otherUserId = chatRecord.participantsData
                                                        .firstWhere((p) => p.userId != currentUserReference?.id, orElse: () => ParticipantDataStruct(userId: 'unknown'))
                                                        .userId;
                                                    context.pushNamed(
                                                      ChatThreadWidget.routeName,
                                                      pathParameters: {
                                                        'chatId': chatRecord.reference.id,
                                                      },
                                                      queryParameters: {
                                                        'otherUserName': otherParticipantName,
                                                        if (otherParticipantAvatar != null && otherParticipantAvatar.isNotEmpty)
                                                          'otherUserAvatarUrl': otherParticipantAvatar,
                                                        'otherUserId': otherUserId,
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                                                    decoration: BoxDecoration(
                                                      border: Border(bottom: BorderSide(color: FlutterFlowTheme.of(context).alternate, width: 0.5))
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 28,
                                                          backgroundImage: NetworkImage(
                                                            valueOrDefault<String>(otherParticipantAvatar, 'https://t3.ftcdn.net/jpg/05/16/27/58/360_F_516275801_f3Fsp17x6HQK0xQgDQEELoTuERO4SsWV.jpg'),
                                                          ),
                                                          backgroundColor: FlutterFlowTheme.of(context).accent1,
                                                        ),
                                                        SizedBox(width: 12.0),
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                otherParticipantName,
                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                      fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
                                                                      letterSpacing: 0.0,
                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                    ),
                                                              ),
                                                              SizedBox(height: 4.0),
                                                              Text(
                                                                chatRecord.lastMessage ?? '',
                                                                maxLines: 1,
                                                                overflow: TextOverflow.ellipsis,
                                                                style: (isUnread
                                                                    ? FlutterFlowTheme.of(context).bodyMedium.override(fontWeight: FontWeight.bold, letterSpacing: 0.0)
                                                                    : FlutterFlowTheme.of(context).bodySmall.override(letterSpacing: 0.0)
                                                                  ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(width: 8.0),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            if (chatRecord.lastMessageTimestamp != null)
                                                              Text(
                                                                timeago.format(chatRecord.lastMessageTimestamp!),
                                                                style: FlutterFlowTheme.of(context).bodyExtraSmall.override(
                                                                    color: FlutterFlowTheme.of(context).secondaryText, letterSpacing: 0.0),
                                                              ),
                                                            if (isUnread) ...[
                                                              SizedBox(height: 4.0),
                                                              Container(
                                                                width: 10,
                                                                height: 10,
                                                                decoration: BoxDecoration(
                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                  shape: BoxShape.circle,
                                                                ),
                                                              ),
                                                            ]
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
