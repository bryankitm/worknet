import '/flutter_flow/flutter_flow_util.dart';
import 'header_main_widget.dart' show HeaderMainWidget;
import 'package:flutter/material.dart';

class HeaderMainModel extends FlutterFlowModel<HeaderMainWidget> {
  ///  Local state fields for this component.

  bool? hoverMenu = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
