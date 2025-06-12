import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).customColor2,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'CompanyProfile': ParameterData.none(),
  'HrPostJob': ParameterData.none(),
  'Candidates': ParameterData.none(),
  'MyProfile': ParameterData.none(),
  'ChangePassword': ParameterData.none(),
  'Packages': ParameterData.none(),
  'ResumeAlerts': ParameterData.none(),
  'Messages': ParameterData.none(),
  'errorPage': ParameterData.none(),
  'auth_3_Create': ParameterData.none(),
  'auth_3_Login': ParameterData.none(),
  'auth_3_phone': ParameterData.none(),
  'auth_3_verifyPhone': (data) async => ParameterData(
        allParams: {
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
        },
      ),
  'auth_3_ForgotPassword': ParameterData.none(),
  'AdminDashboard': ParameterData.none(),
  'Home': ParameterData.none(),
  'Contact': ParameterData.none(),
  'About': ParameterData.none(),
  'JobDetail': (data) async => ParameterData(
        allParams: {
          'jobRef': getParameter<DocumentReference>(data, 'jobRef'),
        },
      ),
  'AdminJobList': ParameterData.none(),
  'AdminCompanyList': ParameterData.none(),
  'UserDashboard': ParameterData.none(),
  'JobCategories': ParameterData.none(),
  'JobSubCategories': ParameterData.none(),
  'AdminUsersList': ParameterData.none(),
  'BookmarkResume': ParameterData.none(),
  'CareerProfile': ParameterData.none(),
  'EmploymentAvailability': ParameterData.none(),
  'AboutMe': (data) async => ParameterData(
        allParams: {
          'about': getParameter<String>(data, 'about'),
        },
      ),
  'UpdateWorkExperience': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'AddEducation': ParameterData.none(),
  'AddAssociation': ParameterData.none(),
  'AddCertificateorAward': ParameterData.none(),
  'AddLanguageSkill': ParameterData.none(),
  'CoverLetter': (data) async => ParameterData(
        allParams: {
          'coverLetter': getParameter<String>(data, 'coverLetter'),
        },
      ),
  'AddProjectsPortfolio': ParameterData.none(),
  'AddProjectsPortfolioViewAll': ParameterData.none(),
  'UpdateAssociation': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'UpdateCertificateorAward': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'UpdateEducation': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'UpdateLanguageSkill': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'UpdateProjectsPortfolio': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'AddWorkExperience': ParameterData.none(),
  'HrDashboard': ParameterData.none(),
  'HrApplicationList': (data) async => ParameterData(
        allParams: {
          'status': getParameter<String>(data, 'status'),
        },
      ),
  'BookmarkedJobs': ParameterData.none(),
  'ApplyForJob': (data) async => ParameterData(
        allParams: {
          'jobPostDoc': await getDocumentParameter<JobPostingsRecord>(
              data, 'jobPostDoc', JobPostingsRecord.fromSnapshot),
        },
      ),
  'ApplicationDetail': (data) async => ParameterData(
        allParams: {
          'applicationDoc': await getDocumentParameter<JobApplicationsRecord>(
              data, 'applicationDoc', JobApplicationsRecord.fromSnapshot),
        },
      ),
  'UserApplicationList': ParameterData.none(),
  'support_TicketList': ParameterData.none(),
  'support_SubmitTicket': ParameterData.none(),
  'support_TicketDetails': (data) async => ParameterData(
        allParams: {
          'ticketRef': await getDocumentParameter<SupportTicketsRecord>(
              data, 'ticketRef', SupportTicketsRecord.fromSnapshot),
        },
      ),
  'CreateCompanyProfile': ParameterData.none(),
  'HrStaffList': ParameterData.none(),
  'HrJobList': ParameterData.none(),
  'HrUserDetails': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
  'HrApplicationDetail': (data) async => ParameterData(
        allParams: {
          'applicationDoc': await getDocumentParameter<JobApplicationsRecord>(
              data, 'applicationDoc', JobApplicationsRecord.fromSnapshot),
        },
      ),
  'Companies': ParameterData.none(),
  'TalentPool': ParameterData.none(),
  'UserDetails': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
  'HrUpdateJob': (data) async => ParameterData(
        allParams: {
          'jobRef': getParameter<DocumentReference>(data, 'jobRef'),
        },
      ),
  'AdminUserDetails': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
          'viewOnly': getParameter<bool>(data, 'viewOnly'),
        },
      ),
  'AdminCompanyProfileDetail': (data) async => ParameterData(
        allParams: {
          'compDoc': await getDocumentParameter<CompaniesRecord>(
              data, 'compDoc', CompaniesRecord.fromSnapshot),
        },
      ),
  'AdminJobDetail': (data) async => ParameterData(
        allParams: {
          'jobRef': getParameter<DocumentReference>(data, 'jobRef'),
        },
      ),
  'CompleteProfile': ParameterData.none(),
  'CompanyProfileDetail': (data) async => ParameterData(
        allParams: {
          'compDoc': await getDocumentParameter<CompaniesRecord>(
              data, 'compDoc', CompaniesRecord.fromSnapshot),
        },
      ),
  'support_TicketListAdmin': ParameterData.none(),
  'JobListing': ParameterData.none(),
  'Jobsese': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
