import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'notification_bell_icon_widget.dart' show NotificationBellIconWidget;
import 'package:flutter/material.dart';

class NotificationBellIconModel extends FlutterFlowModel<NotificationBellIconWidget> {
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
    _countStreamSubscription?.cancel();
    _controller?.close();
  }
}
