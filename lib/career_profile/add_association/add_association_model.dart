import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'add_association_widget.dart' show AddAssociationWidget;
import 'package:flutter/material.dart';

class AddAssociationModel extends FlutterFlowModel<AddAssociationWidget> {
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

  // State field(s) for Role widget.
  FocusNode? roleFocusNode;
  TextEditingController? roleTextController;
  String? Function(BuildContext, String?)? roleTextControllerValidator;
  String? _roleTextControllerValidator(BuildContext context, String? val) {
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
    roleTextControllerValidator = _roleTextControllerValidator;
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

    roleFocusNode?.dispose();
    roleTextController?.dispose();

    careerProfileStatModel.dispose();
    associationMFocusNode?.dispose();
    associationMTextController?.dispose();

    roleMFocusNode?.dispose();
    roleMTextController?.dispose();

    footerModel.dispose();
    sideBarModel.dispose();
  }
}
