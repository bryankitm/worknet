import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import 'resume_alerts_widget.dart' show ResumeAlertsWidget;
import 'package:flutter/material.dart';

class ResumeAlertsModel extends FlutterFlowModel<ResumeAlertsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();
  // Model for Header component.
  late HeaderModel headerModel;
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
    paginatedDataTableController.dispose();
    headerModel.dispose();
    sideBarModel2.dispose();
  }
}
