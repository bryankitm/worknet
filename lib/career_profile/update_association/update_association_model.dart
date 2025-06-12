import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'update_association_widget.dart' show UpdateAssociationWidget;
import 'package:flutter/material.dart';

class UpdateAssociationModel extends FlutterFlowModel<UpdateAssociationWidget> {
  ///  Local state fields for this page.

  AssociationStruct? associationData;
  void updateAssociationDataStruct(Function(AssociationStruct) updateFn) {
    updateFn(associationData ??= AssociationStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for Association widget.
  FocusNode? associationFocusNode;
  TextEditingController? associationTextController;
  String? Function(BuildContext, String?)? associationTextControllerValidator;
  String? _associationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Association is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Role is required';
    }

    return null;
  }

  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel;
  // State field(s) for AssociationM widget.
  FocusNode? associationMFocusNode;
  TextEditingController? associationMTextController;
  String? Function(BuildContext, String?)? associationMTextControllerValidator;
  String? _associationMTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Association is required';
    }

    return null;
  }

  // State field(s) for RoleM widget.
  FocusNode? roleMFocusNode;
  TextEditingController? roleMTextController;
  String? Function(BuildContext, String?)? roleMTextControllerValidator;
  String? _roleMTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Role is required';
    }

    return null;
  }

  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    associationTextControllerValidator = _associationTextControllerValidator;
    textController2Validator = _textController2Validator;
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    associationMTextControllerValidator = _associationMTextControllerValidator;
    roleMTextControllerValidator = _roleMTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    associationFocusNode?.dispose();
    associationTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    careerProfileStatModel.dispose();
    associationMFocusNode?.dispose();
    associationMTextController?.dispose();

    roleMFocusNode?.dispose();
    roleMTextController?.dispose();

    footerModel.dispose();
    sideBarModel.dispose();
  }
}
