import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'error_page_widget.dart' show ErrorPageWidget;
import 'package:flutter/material.dart';

class ErrorPageModel extends FlutterFlowModel<ErrorPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    footerModel.dispose();
  }
}
