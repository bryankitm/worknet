import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'about_widget.dart' show AboutWidget;
import 'package:flutter/material.dart';

class AboutModel extends FlutterFlowModel<AboutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBarFront component.
  late SideBarFrontModel sideBarFrontModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    footerModel = createModel(context, () => FooterModel());
    sideBarFrontModel = createModel(context, () => SideBarFrontModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    footerModel.dispose();
    sideBarFrontModel.dispose();
  }
}
