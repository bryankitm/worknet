import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'auth3_login_widget.dart' show Auth3LoginWidget;
import 'package:flutter/material.dart';

class Auth3LoginModel extends FlutterFlowModel<Auth3LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    headerMainModel = createModel(context, () => HeaderMainModel());
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    headerMainModel.dispose();
  }
}
