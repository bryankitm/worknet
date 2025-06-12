import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user/notifications/user_notifications_widget.dart'; // Ensure this path is correct
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges; // Using an alias for clarity
import 'notification_bell_icon_model.dart';
export 'notification_bell_icon_model.dart';

class NotificationBellIconWidget extends StatefulWidget {
  const NotificationBellIconWidget({
    super.key,
    this.iconColor,
    this.iconSize,
    this.badgeColor,
    this.badgeTextColor,
  });

  final Color? iconColor;
  final double? iconSize;
  final Color? badgeColor;
  final Color? badgeTextColor;

  @override
  State<NotificationBellIconWidget> createState() =>
      _NotificationBellIconWidgetState();
}

class _NotificationBellIconWidgetState
    extends State<NotificationBellIconWidget> {
  late NotificationBellIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationBellIconModel());
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!loggedIn) {
      return SizedBox.shrink(); // Don't show if not logged in
    }

    final iconColor = widget.iconColor ?? FlutterFlowTheme.of(context).primaryText;
    final iconSize = widget.iconSize ?? 24.0;
    final badgeColor = widget.badgeColor ?? FlutterFlowTheme.of(context).error;
    final badgeTextColor = widget.badgeTextColor ?? FlutterFlowTheme.of(context).onError;

    return StreamBuilder<int>(
      stream: _model.unreadNotificationsCountStream,
      builder: (context, snapshot) {
        final unreadCount = snapshot.data ?? 0;
        final bool hasUnread = unreadCount > 0;

        return InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed(UserNotificationsWidget.routeName);
          },
          child: Padding(
            padding: EdgeInsets.all(8.0), // Adjust padding as needed
            child: badges.Badge(
              badgeContent: Text(
                unreadCount.toString(),
                style: TextStyle(color: badgeTextColor, fontSize: 10),
              ),
              showBadge: hasUnread,
              badgeStyle: badges.BadgeStyle(
                badgeColor: badgeColor,
              ),
              position: badges.BadgePosition.topEnd(top: -8, end: -8), // Adjust position
              child: Icon(
                hasUnread ? Icons.notifications_active : Icons.notifications_none,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ),
        );
      },
    );
  }
}
