import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_sub_category_widget.dart' show UpdateSubCategoryWidget;
import 'package:flutter/material.dart';

class UpdateSubCategoryModel extends FlutterFlowModel<UpdateSubCategoryWidget> {
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
  // State field(s) for Category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  JobCategoriesRecord? category;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    subCategoryNameFocusNode?.dispose();
    subCategoryNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    categoryFocusNode?.dispose();
    categoryTextController?.dispose();
  }
}
