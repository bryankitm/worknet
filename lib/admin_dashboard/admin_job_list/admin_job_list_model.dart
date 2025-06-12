import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'admin_job_list_widget.dart' show AdminJobListWidget;
import 'package:flutter/material.dart';

class AdminJobListModel extends FlutterFlowModel<AdminJobListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for SearchJobList widget.
  FocusNode? searchJobListFocusNode;
  TextEditingController? searchJobListTextController;
  String? Function(BuildContext, String?)? searchJobListTextControllerValidator;
  List<JobPostingsRecord> simpleSearchResults = [];
  // State field(s) for DataTableMb widget.
  final dataTableMbController =
      FlutterFlowDataTableController<JobPostingsRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<JobPostingsRecord>();
  // Model for SideBar component.
  late SideBarModel sideBarModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    headerModel = createModel(context, () => HeaderModel());
    sideBarModel2 = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel1.dispose();
    headerModel.dispose();
    searchJobListFocusNode?.dispose();
    searchJobListTextController?.dispose();

    dataTableMbController.dispose();
    paginatedDataTableController.dispose();
    sideBarModel2.dispose();
  }
}
