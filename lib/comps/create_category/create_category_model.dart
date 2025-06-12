import '/flutter_flow/flutter_flow_util.dart';
import 'create_category_widget.dart' show CreateCategoryWidget;
import 'package:flutter/material.dart';

class CreateCategoryModel extends FlutterFlowModel<CreateCategoryWidget> {
  ///  Local state fields for this component.

  List<String> subCategories = [];
  void addToSubCategories(String item) => subCategories.add(item);
  void removeFromSubCategories(String item) => subCategories.remove(item);
  void removeAtIndexFromSubCategories(int index) =>
      subCategories.removeAt(index);
  void insertAtIndexInSubCategories(int index, String item) =>
      subCategories.insert(index, item);
  void updateSubCategoriesAtIndex(int index, Function(String) updateFn) =>
      subCategories[index] = updateFn(subCategories[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CategoryName widget.
  FocusNode? categoryNameFocusNode;
  TextEditingController? categoryNameTextController;
  String? Function(BuildContext, String?)? categoryNameTextControllerValidator;
  String? _categoryNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Category Name is required';
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    categoryNameTextControllerValidator = _categoryNameTextControllerValidator;
  }

  @override
  void dispose() {
    categoryNameFocusNode?.dispose();
    categoryNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
