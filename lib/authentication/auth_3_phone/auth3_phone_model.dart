import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'auth3_phone_widget.dart' show Auth3PhoneWidget;
import 'package:flutter/material.dart';

class Auth3PhoneModel extends FlutterFlowModel<Auth3PhoneWidget> {
  ///  Local state fields for this page.

  String? phone;

  String? code;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    headerMainModel.dispose();
  }
}
