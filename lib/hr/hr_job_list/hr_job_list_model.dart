import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'hr_job_list_widget.dart' show HrJobListWidget;
import 'package:flutter/material.dart';

class HrJobListModel extends FlutterFlowModel<HrJobListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<JobPostingsRecord>();
  // State field(s) for JobStatus widget.
  String? jobStatusValue;
  FormFieldController<String>? jobStatusValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
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
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    sideBarModel2.dispose();
  }
}
