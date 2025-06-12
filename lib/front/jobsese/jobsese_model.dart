import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import 'jobsese_widget.dart' show JobseseWidget;
import 'package:flutter/material.dart';

class JobseseModel extends FlutterFlowModel<JobseseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    headerModel.dispose();
  }
}
