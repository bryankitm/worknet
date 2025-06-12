import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'auth3_forgot_password_widget.dart' show Auth3ForgotPasswordWidget;
import 'package:flutter/material.dart';

class Auth3ForgotPasswordModel
    extends FlutterFlowModel<Auth3ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    headerMainModel.dispose();
  }
}
