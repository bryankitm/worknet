import '/flutter_flow/flutter_flow_util.dart';
import 'chat_thread_widget.dart' show ChatThreadWidget;
import 'package:flutter/material.dart';

class ChatThreadModel extends FlutterFlowModel<ChatThreadWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for message input.
  late TextEditingController messageController;
  String? Function(BuildContext, String?)? messageControllerValidator;

  bool isLoadingMessages = true; // To handle initial loading state for messages
  // Optional: List<MessagesRecord> messagesList; // If not using StreamBuilder's snapshot directly

  @override
  void initState(BuildContext context) {
    messageController = TextEditingController();
  }

  @override
  void dispose() {
    messageController.dispose();
  }
}
