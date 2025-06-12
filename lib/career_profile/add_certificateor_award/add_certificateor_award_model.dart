import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'add_certificateor_award_widget.dart' show AddCertificateorAwardWidget;
import 'package:flutter/material.dart';

class AddCertificateorAwardModel
    extends FlutterFlowModel<AddCertificateorAwardWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Certificate title is required';
    }

    return null;
  }

  // State field(s) for Type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  DateTime? datePicked1;
  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel;
  // State field(s) for titlem widget.
  FocusNode? titlemFocusNode;
  TextEditingController? titlemTextController;
  String? Function(BuildContext, String?)? titlemTextControllerValidator;
  String? _titlemTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    return null;
  }

  // State field(s) for TypeM widget.
  String? typeMValue;
  FormFieldController<String>? typeMValueController;
  DateTime? datePicked2;
  // Model for Footer component.
  late FooterModel footerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    titleTextControllerValidator = _titleTextControllerValidator;
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    titlemTextControllerValidator = _titlemTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    careerProfileStatModel.dispose();
    titlemFocusNode?.dispose();
    titlemTextController?.dispose();

    footerModel.dispose();
    textFieldFocusNode?.dispose();
    textController3?.dispose();

    sideBarModel.dispose();
  }
}
