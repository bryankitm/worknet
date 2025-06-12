import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_notifications_widget.dart' show UserNotificationsWidget;
import 'package:flutter/material.dart';

class UserNotificationsModel extends FlutterFlowModel<UserNotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  List<NotificationsRecord>? listViewPreviousSnapshot;
  bool currentlyLoadingMore = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
