import '/flutter_flow/flutter_flow_util.dart';
import 'sub_category_details_widget.dart' show SubCategoryDetailsWidget;
import 'package:flutter/material.dart';

class SubCategoryDetailsModel
    extends FlutterFlowModel<SubCategoryDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SubCategoryName widget.
  FocusNode? subCategoryNameFocusNode;
  TextEditingController? subCategoryNameTextController;
  String? Function(BuildContext, String?)?
      subCategoryNameTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    subCategoryNameFocusNode?.dispose();
    subCategoryNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
