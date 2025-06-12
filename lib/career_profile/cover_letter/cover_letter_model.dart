import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'cover_letter_widget.dart' show CoverLetterWidget;
import 'package:flutter/material.dart';

class CoverLetterModel extends FlutterFlowModel<CoverLetterWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    careerProfileStatModel.dispose();
    footerModel.dispose();
    sideBarModel.dispose();
  }
}
