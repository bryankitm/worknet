import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'user_notifications_model.dart';
export 'user_notifications_model.dart';

class UserNotificationsWidget extends StatefulWidget {
  const UserNotificationsWidget({super.key});

  static const String routeName = 'UserNotifications';

  @override
  State<UserNotificationsWidget> createState() =>
      _UserNotificationsWidgetState();
}

class _UserNotificationsWidgetState extends State<UserNotificationsWidget> {
  late UserNotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserNotificationsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Future<void> _markAsRead(NotificationsRecord notification) async {
    if (!notification.isRead) {
      await notification.reference.update({'is_read': true});
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Notification marked as read.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
    // Optional: Navigate to a detailed view or perform other actions
    // if (notification.type == 'application_status' && notification.hasReferenceId()) {
    //   context.pushNamed('ApplicationStatusPage', queryParameters: {'refId': notification.referenceId});
    // }
  }

  IconData _getIconForNotificationType(String? type) {
    switch (type) {
      case 'application_status':
        return Icons.work_history_outlined;
      case 'new_job_alert':
        return Icons.new_releases_outlined;
      case 'message_received':
        return Icons.message_outlined;
      default:
        return Icons.notifications_active_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(responsiveVisibility(
            context: context,
            phone: true,
            tablet: true,
            desktop: false,
          ) ? 60.0 : 0.0), // Only show AppBar on mobile/tablet
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: true,
              tablet: true,
              desktop: false,
            ),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: true,
              title: Text(
                'Notifications',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // This is where a desktop header might go if not using the AppBar
              // For now, it's empty for desktop if AppBar is hidden.
              Expanded(
                child: StreamBuilder<List<NotificationsRecord>>(
                  stream: queryNotificationsRecord(
                    queryBuilder: (notificationsRecord) =>
                        notificationsRecord
                            .where('user_id', isEqualTo: currentUserReference)
                            .orderBy('created_at', descending: true),
                  ),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(
                        child: Text(
                          'You have no notifications yet.',
                          style: FlutterFlowTheme.of(context).labelLarge.override(
                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                              ),
                        ),
                      );
                    }

                    List<NotificationsRecord> notifications = snapshot.data!;
                    _model.listViewPreviousSnapshot = notifications; // Keep track for pagination if needed later

                    return ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      itemCount: notifications.length,
                      itemBuilder: (context, index) {
                        final notification = notifications[index];
                        final bool isUnread = !notification.isRead;
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                          child: InkWell(
                            splashColor: FlutterFlowTheme.of(context).primary.withOpacity(0.1),
                            focusColor: FlutterFlowTheme.of(context).primary.withOpacity(0.1),
                            hoverColor: FlutterFlowTheme.of(context).primary.withOpacity(0.05),
                            highlightColor: FlutterFlowTheme.of(context).primary.withOpacity(0.1),
                            onTap: () => _markAsRead(notification),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: isUnread
                                  ? FlutterFlowTheme.of(context).secondaryBackground.withOpacity(0.7)
                                  : FlutterFlowTheme.of(context).secondaryBackground,
                              elevation: 3.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: isUnread ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                  width: isUnread ? 1.5 : 0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      _getIconForNotificationType(notification.type),
                                      color: isUnread ? FlutterFlowTheme.of(context).primaryText : FlutterFlowTheme.of(context).secondaryText,
                                      size: 28.0,
                                    ),
                                    SizedBox(width: 12.0),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Title could go here if added to schema
                                          // Text(
                                          //   notification.title, // Assuming a title field
                                          //   style: FlutterFlowTheme.of(context).titleMedium.override(
                                          //     fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                          //     fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
                                          //     letterSpacing: 0.0,
                                          //   ),
                                          // ),
                                          // SizedBox(height: 4.0),
                                          Text(
                                            notification.message,
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                  color: isUnread ? FlutterFlowTheme.of(context).primaryText : FlutterFlowTheme.of(context).secondaryText,
                                                  fontWeight: isUnread ? FontWeight.w500 : FontWeight.normal,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          SizedBox(height: 6.0),
                                          Text(
                                            dateTimeFormat('relative', notification.createdAt),
                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (isUnread)
                                      Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).primary,
                                          shape: BoxShape.circle,
                                        ),
                                        margin: EdgeInsets.only(left: 8.0),
                                      ),
                                  ],
                                ),
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
    );
  }
}
