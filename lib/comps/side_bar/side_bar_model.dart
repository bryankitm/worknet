import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'side_bar_widget.dart' show SideBarWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SideBarModel extends FlutterFlowModel<SideBarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  /// Stream that emits the count of unread notifications.
  late Stream<int> unreadNotificationsCountStream;
  StreamSubscription? _countStreamSubscription;
  StreamController<int>? _controller;

  @override
  void initState(BuildContext context) {
    if (currentUserReference != null) {
      final query = NotificationsRecord.collection
          .where('user_id', isEqualTo: currentUserReference)
          .where('is_read', isEqualTo: false);

      _controller = StreamController<int>();

      _countStreamSubscription = query.snapshots().listen((snapshot) {
        _controller?.add(snapshot.length);
      });

      unreadNotificationsCountStream = _controller!.stream;
    } else {
      unreadNotificationsCountStream = Stream.value(0);
    }
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    _countStreamSubscription?.cancel();
    _controller?.close();
  }
}
