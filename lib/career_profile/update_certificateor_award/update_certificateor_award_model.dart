import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'update_certificateor_award_widget.dart'
    show UpdateCertificateorAwardWidget;
import 'package:flutter/material.dart';

class UpdateCertificateorAwardModel
    extends FlutterFlowModel<UpdateCertificateorAwardWidget> {
  ///  Local state fields for this page.

  CertificateStruct? certificateData;
  void updateCertificateDataStruct(Function(CertificateStruct) updateFn) {
    updateFn(certificateData ??= CertificateStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
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
      return 'title is required';
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
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    textController1Validator = _textController1Validator;
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    titlemTextControllerValidator = _titlemTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    careerProfileStatModel.dispose();
    titlemFocusNode?.dispose();
    titlemTextController?.dispose();

    footerModel.dispose();
    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    sideBarModel.dispose();
  }
}
