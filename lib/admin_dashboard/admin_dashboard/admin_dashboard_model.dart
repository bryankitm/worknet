import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/material.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<UsersRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<CompaniesRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<JobPostingsRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<UsersRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<CompaniesRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<JobPostingsRecord>();

  /// Query cache managers for this widget.

  final _jobsManager = StreamRequestManager<List<JobPostingsRecord>>();
  Stream<List<JobPostingsRecord>> jobs({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<JobPostingsRecord>> Function() requestFn,
  }) =>
      _jobsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearJobsCache() => _jobsManager.clear();
  void clearJobsCacheKey(String? uniqueKey) =>
      _jobsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    sideBarModel2 = createModel(context, () => SideBarModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sideBarModel1.dispose();
    sideBarModel2.dispose();
    headerModel.dispose();
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    paginatedDataTableController4.dispose();
    paginatedDataTableController5.dispose();
    paginatedDataTableController6.dispose();

    /// Dispose query cache managers for this widget.

    clearJobsCache();
  }
}
