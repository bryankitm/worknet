import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'side_bar_front_widget.dart' show SideBarFrontWidget;
import 'package:flutter/material.dart';

class SideBarFrontModel extends FlutterFlowModel<SideBarFrontWidget> {
  /// Stream that emits the count of unread notifications.
  late Stream<int> unreadNotificationsCountStream;
  StreamSubscription? _countStreamSubscription; // To manage the underlying list stream
  StreamController<int>? _controller; // Controller for the count stream

  @override
  void initState(BuildContext context) {
    if (currentUserReference != null) {
      final query = NotificationsRecord.collection
          .where('user_id', isEqualTo: currentUserReference)
          .where('is_read', isEqualTo: false);

      _controller = StreamController<int>(); // Initialize the controller

      _countStreamSubscription = query.snapshots().listen((snapshot) {
        _controller?.add(snapshot.length);
      });

      unreadNotificationsCountStream = _controller!.stream;
    } else {
      // If user is not logged in, stream emits 0 and closes.
      unreadNotificationsCountStream = Stream.value(0);
    }
  }

  @override
  void dispose() {
    _countStreamSubscription?.cancel();
    _controller?.close(); // Close the controller
  }
}
