import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'add_education_widget.dart' show AddEducationWidget;
import 'package:flutter/material.dart';

class AddEducationModel extends FlutterFlowModel<AddEducationWidget> {
  ///  Local state fields for this page.

  bool? stillStudying = false;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Instituition Name is required';
    }

    return null;
  }

  // State field(s) for MinimumQualification widget.
  String? minimumQualificationValue;
  FormFieldController<String>? minimumQualificationValueController;
  // State field(s) for Qualification widget.
  FocusNode? qualificationFocusNode1;
  TextEditingController? qualificationTextController1;
  String? Function(BuildContext, String?)?
      qualificationTextController1Validator;
  String? _qualificationTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Qualification is required';
    }

    return null;
  }

  // State field(s) for Country widget.
  String? countryValue1;
  FormFieldController<String>? countryValueController1;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;
  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel;
  // State field(s) for NameM widget.
  FocusNode? nameMFocusNode;
  TextEditingController? nameMTextController;
  String? Function(BuildContext, String?)? nameMTextControllerValidator;
  String? _nameMTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Institution Name is required';
    }

    return null;
  }

  // State field(s) for MinimumQualificationM widget.
  String? minimumQualificationMValue;
  FormFieldController<String>? minimumQualificationMValueController;
  // State field(s) for Qualification widget.
  FocusNode? qualificationFocusNode2;
  TextEditingController? qualificationTextController2;
  String? Function(BuildContext, String?)?
      qualificationTextController2Validator;
  String? _qualificationTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Qualification is required';
    }

    return null;
  }

  // State field(s) for Country widget.
  String? countryValue2;
  FormFieldController<String>? countryValueController2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;
  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  // Model for Footer component.
  late FooterModel footerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    nameTextControllerValidator = _nameTextControllerValidator;
    qualificationTextController1Validator =
        _qualificationTextController1Validator;
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    nameMTextControllerValidator = _nameMTextControllerValidator;
    qualificationTextController2Validator =
        _qualificationTextController2Validator;
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    qualificationFocusNode1?.dispose();
    qualificationTextController1?.dispose();

    careerProfileStatModel.dispose();
    nameMFocusNode?.dispose();
    nameMTextController?.dispose();

    qualificationFocusNode2?.dispose();
    qualificationTextController2?.dispose();

    footerModel.dispose();
    textFieldFocusNode?.dispose();
    textController5?.dispose();

    sideBarModel.dispose();
  }
}
