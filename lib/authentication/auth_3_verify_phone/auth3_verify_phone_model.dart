import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'auth3_verify_phone_widget.dart' show Auth3VerifyPhoneWidget;
import 'package:flutter/material.dart';

class Auth3VerifyPhoneModel extends FlutterFlowModel<Auth3VerifyPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    headerMainModel = createModel(context, () => HeaderMainModel());
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    headerMainModel.dispose();
  }
}
