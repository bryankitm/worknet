import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : HomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : HomeWidget(),
        ),
        FFRoute(
          name: CompanyProfileWidget.routeName,
          path: CompanyProfileWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CompanyProfileWidget(),
        ),
        FFRoute(
          name: HrPostJobWidget.routeName,
          path: HrPostJobWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HrPostJobWidget(),
        ),
        FFRoute(
          name: CandidatesWidget.routeName,
          path: CandidatesWidget.routePath,
          builder: (context, params) => CandidatesWidget(),
        ),
        FFRoute(
          name: MyProfileWidget.routeName,
          path: MyProfileWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MyProfileWidget(),
        ),
        FFRoute(
          name: ChangePasswordWidget.routeName,
          path: ChangePasswordWidget.routePath,
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: PackagesWidget.routeName,
          path: PackagesWidget.routePath,
          builder: (context, params) => PackagesWidget(),
        ),
        FFRoute(
          name: ResumeAlertsWidget.routeName,
          path: ResumeAlertsWidget.routePath,
          builder: (context, params) => ResumeAlertsWidget(),
        ),
        FFRoute(
          name: MessagesWidget.routeName,
          path: MessagesWidget.routePath,
          builder: (context, params) => MessagesWidget(),
        ),
        FFRoute(
          name: ErrorPageWidget.routeName,
          path: ErrorPageWidget.routePath,
          builder: (context, params) => ErrorPageWidget(),
        ),
        FFRoute(
          name: Auth3CreateWidget.routeName,
          path: Auth3CreateWidget.routePath,
          builder: (context, params) => Auth3CreateWidget(),
        ),
        FFRoute(
          name: Auth3LoginWidget.routeName,
          path: Auth3LoginWidget.routePath,
          builder: (context, params) => Auth3LoginWidget(),
        ),
        FFRoute(
          name: Auth3PhoneWidget.routeName,
          path: Auth3PhoneWidget.routePath,
          builder: (context, params) => Auth3PhoneWidget(),
        ),
        FFRoute(
          name: Auth3VerifyPhoneWidget.routeName,
          path: Auth3VerifyPhoneWidget.routePath,
          builder: (context, params) => Auth3VerifyPhoneWidget(
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Auth3ForgotPasswordWidget.routeName,
          path: Auth3ForgotPasswordWidget.routePath,
          builder: (context, params) => Auth3ForgotPasswordWidget(),
        ),
        FFRoute(
          name: AdminDashboardWidget.routeName,
          path: AdminDashboardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AdminDashboardWidget(),
        ),
        FFRoute(
            name: HomeWidget.routeName,
            path: HomeWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'Home')
                : NavBarPage(
                    initialPage: 'Home',
                    page: HomeWidget(),
                  )),
        FFRoute(
          name: ContactWidget.routeName,
          path: ContactWidget.routePath,
          builder: (context, params) => ContactWidget(),
        ),
        FFRoute(
          name: AboutWidget.routeName,
          path: AboutWidget.routePath,
          builder: (context, params) => AboutWidget(),
        ),
        FFRoute(
          name: JobDetailWidget.routeName,
          path: JobDetailWidget.routePath,
          builder: (context, params) => JobDetailWidget(
            jobRef: params.getParam(
              'jobRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Job_Postings'],
            ),
          ),
        ),
        FFRoute(
          name: AdminJobListWidget.routeName,
          path: AdminJobListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AdminJobListWidget(),
        ),
        FFRoute(
          name: AdminCompanyListWidget.routeName,
          path: AdminCompanyListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AdminCompanyListWidget(),
        ),
        FFRoute(
          name: UserDashboardWidget.routeName,
          path: UserDashboardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UserDashboardWidget(),
        ),
        FFRoute(
          name: JobCategoriesWidget.routeName,
          path: JobCategoriesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => JobCategoriesWidget(),
        ),
        FFRoute(
          name: JobSubCategoriesWidget.routeName,
          path: JobSubCategoriesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => JobSubCategoriesWidget(),
        ),
        FFRoute(
          name: AdminUsersListWidget.routeName,
          path: AdminUsersListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AdminUsersListWidget(),
        ),
        FFRoute(
          name: BookmarkResumeWidget.routeName,
          path: BookmarkResumeWidget.routePath,
          builder: (context, params) => BookmarkResumeWidget(),
        ),
        FFRoute(
          name: CareerProfileWidget.routeName,
          path: CareerProfileWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CareerProfileWidget(),
        ),
        FFRoute(
          name: EmploymentAvailabilityWidget.routeName,
          path: EmploymentAvailabilityWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EmploymentAvailabilityWidget(),
        ),
        FFRoute(
          name: AboutMeWidget.routeName,
          path: AboutMeWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AboutMeWidget(
            about: params.getParam(
              'about',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: UpdateWorkExperienceWidget.routeName,
          path: UpdateWorkExperienceWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UpdateWorkExperienceWidget(
            workExperience: params.getParam(
              'workExperience',
              ParamType.DataStruct,
              isList: false,
              structBuilder: WorkExperienceStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: AddEducationWidget.routeName,
          path: AddEducationWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AddEducationWidget(),
        ),
        FFRoute(
          name: AddAssociationWidget.routeName,
          path: AddAssociationWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AddAssociationWidget(),
        ),
        FFRoute(
          name: AddCertificateorAwardWidget.routeName,
          path: AddCertificateorAwardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AddCertificateorAwardWidget(),
        ),
        FFRoute(
          name: AddLanguageSkillWidget.routeName,
          path: AddLanguageSkillWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AddLanguageSkillWidget(),
        ),
        FFRoute(
          name: CoverLetterWidget.routeName,
          path: CoverLetterWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CoverLetterWidget(
            coverLetter: params.getParam(
              'coverLetter',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AddProjectsPortfolioWidget.routeName,
          path: AddProjectsPortfolioWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AddProjectsPortfolioWidget(),
        ),
        FFRoute(
          name: AddProjectsPortfolioViewAllWidget.routeName,
          path: AddProjectsPortfolioViewAllWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AddProjectsPortfolioViewAllWidget(),
        ),
        FFRoute(
          name: UpdateAssociationWidget.routeName,
          path: UpdateAssociationWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UpdateAssociationWidget(
            association: params.getParam(
              'association',
              ParamType.DataStruct,
              isList: false,
              structBuilder: AssociationStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: UpdateCertificateorAwardWidget.routeName,
          path: UpdateCertificateorAwardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UpdateCertificateorAwardWidget(
            certificate: params.getParam(
              'certificate',
              ParamType.DataStruct,
              isList: false,
              structBuilder: CertificateStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: UpdateEducationWidget.routeName,
          path: UpdateEducationWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UpdateEducationWidget(
            education: params.getParam(
              'education',
              ParamType.DataStruct,
              isList: false,
              structBuilder: EducationStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: UpdateLanguageSkillWidget.routeName,
          path: UpdateLanguageSkillWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UpdateLanguageSkillWidget(
            language: params.getParam(
              'language',
              ParamType.DataStruct,
              isList: false,
              structBuilder: LanguageStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: UpdateProjectsPortfolioWidget.routeName,
          path: UpdateProjectsPortfolioWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UpdateProjectsPortfolioWidget(
            projects: params.getParam(
              'projects',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProjectsPortfolioStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: AddWorkExperienceWidget.routeName,
          path: AddWorkExperienceWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AddWorkExperienceWidget(),
        ),
        FFRoute(
          name: HrDashboardWidget.routeName,
          path: HrDashboardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HrDashboardWidget(),
        ),
        FFRoute(
          name: HrApplicationListWidget.routeName,
          path: HrApplicationListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HrApplicationListWidget(
            status: params.getParam(
              'status',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: BookmarkedJobsWidget.routeName,
          path: BookmarkedJobsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => BookmarkedJobsWidget(),
        ),
        FFRoute(
          name: ApplyForJobWidget.routeName,
          path: ApplyForJobWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'jobPostDoc':
                getDoc(['Job_Postings'], JobPostingsRecord.fromSnapshot),
          },
          builder: (context, params) => ApplyForJobWidget(
            jobPostDoc: params.getParam(
              'jobPostDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ApplicationDetailWidget.routeName,
          path: ApplicationDetailWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'applicationDoc': getDoc(
                ['job_applications'], JobApplicationsRecord.fromSnapshot),
          },
          builder: (context, params) => ApplicationDetailWidget(
            applicationDoc: params.getParam(
              'applicationDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserApplicationListWidget.routeName,
          path: UserApplicationListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UserApplicationListWidget(),
        ),
        FFRoute(
          name: SupportTicketListWidget.routeName,
          path: SupportTicketListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SupportTicketListWidget(),
        ),
        FFRoute(
          name: SupportSubmitTicketWidget.routeName,
          path: SupportSubmitTicketWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SupportSubmitTicketWidget(),
        ),
        FFRoute(
          name: SupportTicketDetailsWidget.routeName,
          path: SupportTicketDetailsWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'ticketRef':
                getDoc(['supportTickets'], SupportTicketsRecord.fromSnapshot),
          },
          builder: (context, params) => SupportTicketDetailsWidget(
            ticketRef: params.getParam(
              'ticketRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateCompanyProfileWidget.routeName,
          path: CreateCompanyProfileWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CreateCompanyProfileWidget(),
        ),
        FFRoute(
          name: HrStaffListWidget.routeName,
          path: HrStaffListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HrStaffListWidget(),
        ),
        FFRoute(
          name: HrJobListWidget.routeName,
          path: HrJobListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HrJobListWidget(),
        ),
        FFRoute(
          name: HrUserDetailsWidget.routeName,
          path: HrUserDetailsWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'userDoc': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => HrUserDetailsWidget(
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: HrApplicationDetailWidget.routeName,
          path: HrApplicationDetailWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'applicationDoc': getDoc(
                ['job_applications'], JobApplicationsRecord.fromSnapshot),
          },
          builder: (context, params) => HrApplicationDetailWidget(
            applicationDoc: params.getParam(
              'applicationDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CompaniesWidget.routeName,
          path: CompaniesWidget.routePath,
          builder: (context, params) => CompaniesWidget(),
        ),
        FFRoute(
            name: TalentPoolWidget.routeName,
            path: TalentPoolWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'TalentPool')
                : NavBarPage(
                    initialPage: 'TalentPool',
                    page: TalentPoolWidget(),
                  )),
        FFRoute(
          name: UserDetailsWidget.routeName,
          path: UserDetailsWidget.routePath,
          asyncParams: {
            'userDoc': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => UserDetailsWidget(
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: HrUpdateJobWidget.routeName,
          path: HrUpdateJobWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HrUpdateJobWidget(
            jobRef: params.getParam(
              'jobRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Job_Postings'],
            ),
          ),
        ),
        FFRoute(
          name: AdminUserDetailsWidget.routeName,
          path: AdminUserDetailsWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'userDoc': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => AdminUserDetailsWidget(
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
            viewOnly: params.getParam(
              'viewOnly',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: AdminCompanyProfileDetailWidget.routeName,
          path: AdminCompanyProfileDetailWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'compDoc': getDoc(['Companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => AdminCompanyProfileDetailWidget(
            compDoc: params.getParam(
              'compDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AdminJobDetailWidget.routeName,
          path: AdminJobDetailWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AdminJobDetailWidget(
            jobRef: params.getParam(
              'jobRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Job_Postings'],
            ),
          ),
        ),
        FFRoute(
          name: CompleteProfileWidget.routeName,
          path: CompleteProfileWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CompleteProfileWidget(),
        ),
        FFRoute(
          name: CompanyProfileDetailWidget.routeName,
          path: CompanyProfileDetailWidget.routePath,
          asyncParams: {
            'compDoc': getDoc(['Companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => CompanyProfileDetailWidget(
            compDoc: params.getParam(
              'compDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: SupportTicketListAdminWidget.routeName,
          path: SupportTicketListAdminWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SupportTicketListAdminWidget(),
        ),
        FFRoute(
            name: JobListingWidget.routeName,
            path: JobListingWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'JobListing')
                : NavBarPage(
                    initialPage: 'JobListing',
                    page: JobListingWidget(),
                  )),
        FFRoute(
          name: JobseseWidget.routeName,
          path: JobseseWidget.routePath,
          builder: (context, params) => JobseseWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/home';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
