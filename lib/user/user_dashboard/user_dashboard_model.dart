import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'user_dashboard_widget.dart' show UserDashboardWidget;
import 'package:flutter/material.dart';

class UserDashboardModel extends FlutterFlowModel<UserDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;

  // Fields for Job Recommendations
  List<Map<String, dynamic>> recommendedJobs = [];
  bool isLoadingRecommendations = false;

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
    sideBarModel2.dispose();
  }
}
