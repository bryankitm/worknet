import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'career_profile_widget.dart' show CareerProfileWidget;
import 'package:flutter/material.dart';

class CareerProfileModel extends FlutterFlowModel<CareerProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel1;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;
  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // State field(s) for JobSkills widget.
  FocusNode? jobSkillsFocusNode1;
  TextEditingController? jobSkillsTextController1;
  String? Function(BuildContext, String?)? jobSkillsTextController1Validator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel2;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;
  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  // State field(s) for JobSkills widget.
  FocusNode? jobSkillsFocusNode2;
  TextEditingController? jobSkillsTextController2;
  String? Function(BuildContext, String?)? jobSkillsTextController2Validator;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  // State field(s) for PDF generation
  bool isGeneratingPdf = false;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    careerProfileStatModel1 =
        createModel(context, () => CareerProfileStatModel());
    careerProfileStatModel2 =
        createModel(context, () => CareerProfileStatModel());
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    careerProfileStatModel1.dispose();
    jobSkillsFocusNode1?.dispose();
    jobSkillsTextController1?.dispose();

    careerProfileStatModel2.dispose();
    jobSkillsFocusNode2?.dispose();
    jobSkillsTextController2?.dispose();

    footerModel.dispose();
    sideBarModel.dispose();
  }
}
