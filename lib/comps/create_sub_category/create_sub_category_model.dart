import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_sub_category_widget.dart' show CreateSubCategoryWidget;
import 'package:flutter/material.dart';

class CreateSubCategoryModel extends FlutterFlowModel<CreateSubCategoryWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for SubCategoryName widget.
  FocusNode? subCategoryNameFocusNode;
  TextEditingController? subCategoryNameTextController;
  String? Function(BuildContext, String?)?
      subCategoryNameTextControllerValidator;
  String? _subCategoryNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Sub Category Name is required';
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Category widget.
  JobCategoriesRecord? selectedCatRef;

  @override
  void initState(BuildContext context) {
    subCategoryNameTextControllerValidator =
        _subCategoryNameTextControllerValidator;
  }

  @override
  void dispose() {
    subCategoryNameFocusNode?.dispose();
    subCategoryNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
