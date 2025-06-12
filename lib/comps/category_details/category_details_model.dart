import '/flutter_flow/flutter_flow_util.dart';
import 'category_details_widget.dart' show CategoryDetailsWidget;
import 'package:flutter/material.dart';

class CategoryDetailsModel extends FlutterFlowModel<CategoryDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CategoryName widget.
  FocusNode? categoryNameFocusNode;
  TextEditingController? categoryNameTextController;
  String? Function(BuildContext, String?)? categoryNameTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    categoryNameFocusNode?.dispose();
    categoryNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
