import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart'; // For FFButtonWidget
import 'user_interview_schedule_model.dart';
import 'package:intl/intl.dart'; // For DateFormat
import 'package:url_launcher/url_launcher.dart';


class UserInterviewScheduleWidget extends StatefulWidget {
  const UserInterviewScheduleWidget({super.key});

  static const String routeName = 'UserInterviewSchedule';
  static const String routePath = '/userInterviewSchedule';

  @override
  State<UserInterviewScheduleWidget> createState() =>
      _UserInterviewScheduleWidgetState();
}

class _UserInterviewScheduleWidgetState
    extends State<UserInterviewScheduleWidget> {
  late UserInterviewScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserInterviewScheduleModel());
    _fetchInterviews();
  }

  Future<void> _fetchInterviews() async {
    if (!mounted) return;
    safeSetState(() {
      _model.isLoadingInterviews = true;
    });

    // Simulate API delay
    await Future.delayed(const Duration(milliseconds: 1200));

    // Placeholder data
    // TODO: Replace with actual data fetching logic
    if (!mounted) return;
    safeSetState(() {
      _model.interviews = [
        {
          'id': 'interview_1',
          'userId': 'user_placeholder_id',
          'hrId': 'hr_placeholder_id',
          'companyName': 'Tech Solutions Inc.',
          'jobTitle': 'Senior Software Engineer',
          'interviewDateTime': DateTime.now().add(const Duration(days: 3, hours: 2)),
          'interviewType': 'Video Call',
          'status': 'PendingConfirmation', // Possible values: PendingConfirmation, Confirmed, Completed, Cancelled
          'meetingLink': 'https://meet.google.com/samplelink1',
          'description': 'Technical interview focusing on system design and algorithms.',
          'googleCalendarEventLink': 'https://calendar.google.com/event?action=TEMPLATE&tmeid=sampleevent1&text=Interview+Senior+Software+Engineer',
        },
        {
          'id': 'interview_2',
          'userId': 'user_placeholder_id',
          'hrId': 'hr_placeholder_id_2',
          'companyName': 'Innovate Hub',
          'jobTitle': 'Product Manager',
          'interviewDateTime': DateTime.now().add(const Duration(days: 5, hours: 10, minutes: 30)),
          'interviewType': 'In-Person',
          'status': 'Confirmed',
          'meetingLink': null, // No meeting link for in-person
          'description': 'Final round interview at our main office. Please bring your portfolio.',
          'googleCalendarEventLink': 'https://calendar.google.com/event?action=TEMPLATE&tmeid=sampleevent2&text=Interview+Product+Manager',
        },
        {
          'id': 'interview_3',
          'userId': 'user_placeholder_id',
          'hrId': 'hr_placeholder_id_3',
          'companyName': 'Data Corp',
          'jobTitle': 'Data Analyst',
          'interviewDateTime': DateTime.now().subtract(const Duration(days: 2)), // Past interview
          'interviewType': 'Phone Screen',
          'status': 'Completed',
          'meetingLink': null,
          'description': 'Initial phone screening.',
          'googleCalendarEventLink': null,
        },
         {
          'id': 'interview_4',
          'userId': 'user_placeholder_id',
          'hrId': 'hr_placeholder_id_4',
          'companyName': 'Marketing Pro',
          'jobTitle': 'Digital Marketing Specialist',
          'interviewDateTime': DateTime.now().add(const Duration(days: 1, hours: 9)),
          'interviewType': 'Video Call',
          'status': 'Confirmed',
          'meetingLink': 'https://zoom.us/j/samplelink4',
          'description': 'Discuss your campaign strategies.',
          'googleCalendarEventLink': null, // No GCal link for this one
        },
      ];
      _model.isLoadingInterviews = false;
    });
  }

  void _updateInterviewStatus(String interviewId, String newStatus) {
    if (!mounted) return;
    safeSetState(() {
      final index = _model.interviews.indexWhere((interview) => interview['id'] == interviewId);
      if (index != -1) {
        _model.interviews[index]['status'] = newStatus;
      }
    });
  }

  Future<void> _launchURL(String? urlString) async {
    if (urlString != null && await canLaunchUrl(Uri.parse(urlString))) {
      await launchUrl(Uri.parse(urlString));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch URL: $urlString')),
      );
    }
  }


  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      ) ? AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        title: Text(
          'My Interviews',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                color: Colors.white,
                fontSize: 22.0,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).headlineMediumFamily),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ) : null,
      body: SafeArea(
        top: true,
        child: _model.isLoadingInterviews
            ? Center(child: CircularProgressIndicator())
            : _model.interviews.isEmpty
                ? Center(
                    child: Text(
                      'No upcoming interviews scheduled.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(letterSpacing: 0.0),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.all(8.0),
                    itemCount: _model.interviews.length,
                    itemBuilder: (context, index) {
                      final interview = _model.interviews[index];
                      final interviewDateTime = interview['interviewDateTime'] as DateTime;
                      final status = interview['status'] as String;

                      Color statusColor;
                      switch (status) {
                        case 'PendingConfirmation':
                          statusColor = FlutterFlowTheme.of(context).warning;
                          break;
                        case 'Confirmed':
                          statusColor = FlutterFlowTheme.of(context).success;
                          break;
                        case 'Completed':
                          statusColor = FlutterFlowTheme.of(context).secondaryText;
                          break;
                        case 'Cancelled':
                          statusColor = FlutterFlowTheme.of(context).error;
                          break;
                        default:
                          statusColor = FlutterFlowTheme.of(context).primaryText;
                      }

                      return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 3.0,
                        margin: EdgeInsets.symmetric(vertical: 6.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                interview['jobTitle'] ?? 'N/A',
                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                  letterSpacing: 0.0,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                interview['companyName'] ?? 'N/A',
                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                  letterSpacing: 0.0,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, size: 16.0, color: FlutterFlowTheme.of(context).secondaryText),
                                  SizedBox(width: 4.0),
                                  Text(
                                    DateFormat('EEE, MMM d, yyyy \'at\' h:mm a').format(interviewDateTime),
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(letterSpacing: 0.0),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    interview['interviewType'] == 'Video Call' ? Icons.videocam_outlined
                                    : interview['interviewType'] == 'Phone Screen' ? Icons.phone_outlined
                                    : interview['interviewType'] == 'In-Person' ? Icons.location_on_outlined
                                    : Icons.event_seat_outlined,
                                    size: 16.0,
                                    color: FlutterFlowTheme.of(context).secondaryText
                                  ),
                                  SizedBox(width: 4.0),
                                  Text(
                                    interview['interviewType'] ?? 'N/A',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(letterSpacing: 0.0),
                                  ),
                                ],
                              ),
                               SizedBox(height: 4.0),
                              if (interview['description'] != null && (interview['description'] as String).isNotEmpty) ...[
                                Text(
                                  'Details: ${interview['description']}',
                                  style: FlutterFlowTheme.of(context).bodySmall.override(letterSpacing: 0.0),
                                ),
                                SizedBox(height: 8.0),
                              ],
                              Row(
                                children: [
                                  Text(
                                    'Status: ',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(fontWeight: FontWeight.bold, letterSpacing: 0.0),
                                  ),
                                  Text(
                                    status,
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(color: statusColor, fontWeight: FontWeight.bold, letterSpacing: 0.0),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12.0),
                              if (status == 'PendingConfirmation')
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        _updateInterviewStatus(interview['id'] as String, 'Confirmed');
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Interview for ${interview['jobTitle']} Confirmed!')),
                                        );
                                      },
                                      text: 'Accept',
                                      options: FFButtonOptions(
                                        height: 35.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context).success,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontSize: 14.0,
                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    FFButtonWidget(
                                      onPressed: () {
                                         _updateInterviewStatus(interview['id'] as String, 'Cancelled');
                                         ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Interview for ${interview['jobTitle']} Declined.')),
                                        );
                                      },
                                      text: 'Decline',
                                      options: FFButtonOptions(
                                        height: 35.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context).error,
                                         textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontSize: 14.0,
                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              if (status == 'Confirmed') ...[
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.end,
                                  children: [
                                     if (interview['interviewType'] == 'Video Call' && interview['meetingLink'] != null)
                                      FFButtonWidget(
                                        onPressed: () {
                                          _launchURL(interview['meetingLink'] as String?);
                                        },
                                        text: 'Join Interview',
                                        icon: Icon(Icons.video_call_outlined),
                                        options: FFButtonOptions(
                                          height: 35.0,
                                          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                          color: FlutterFlowTheme.of(context).primary,
                                           textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                fontSize: 14.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                              ),
                                          elevation: 2.0,
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    if (interview['googleCalendarEventLink'] != null && (interview['googleCalendarEventLink'] as String).isNotEmpty)
                                      FFButtonWidget(
                                        onPressed: () {
                                          _launchURL(interview['googleCalendarEventLink'] as String?);
                                        },
                                        text: 'Add to Calendar',
                                        icon: Icon(Icons.calendar_month_outlined),
                                        options: FFButtonOptions(
                                          height: 35.0,
                                          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                          color: FlutterFlowTheme.of(context).secondary,
                                           textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                fontSize: 14.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                              ),
                                          elevation: 2.0,
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                  ],
                                )
                              ],
                            ],
                          ),
                        ),
                      );
                    },
                  ),
      ),
    );
  }
}
