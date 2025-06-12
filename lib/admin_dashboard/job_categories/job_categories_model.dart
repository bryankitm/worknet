import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import 'job_categories_widget.dart' show JobCategoriesWidget;
import 'package:flutter/material.dart';

class JobCategoriesModel extends FlutterFlowModel<JobCategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<JobCategoriesRecord>();

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
    paginatedDataTableController.dispose();
  }
}
