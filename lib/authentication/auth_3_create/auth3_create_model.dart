import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'auth3_create_widget.dart' show Auth3CreateWidget;
import 'package:flutter/material.dart';

class Auth3CreateModel extends FlutterFlowModel<Auth3CreateWidget> {
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
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CareerProfileRecord? careerProfile;
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
    headerMainModel = createModel(context, () => HeaderMainModel());
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();

    headerMainModel.dispose();
  }
}
