import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'add_work_experience_widget.dart' show AddWorkExperienceWidget;
import 'package:flutter/material.dart';

class AddWorkExperienceModel extends FlutterFlowModel<AddWorkExperienceWidget> {
  ///  Local state fields for this page.

  bool? currentlyWorking = false;

  WorkExperienceStruct? workExperience;
  void updateWorkExperienceStruct(Function(WorkExperienceStruct) updateFn) {
    updateFn(workExperience ??= WorkExperienceStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for Employer widget.
  FocusNode? employerFocusNode1;
  TextEditingController? employerTextController1;
  String? Function(BuildContext, String?)? employerTextController1Validator;
  String? _employerTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Employer is required';
    }

    return null;
  }

  // State field(s) for JobTitle widget.
  FocusNode? jobTitleFocusNode1;
  TextEditingController? jobTitleTextController1;
  String? Function(BuildContext, String?)? jobTitleTextController1Validator;
  String? _jobTitleTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Job Title is required';
    }

    return null;
  }

  // State field(s) for JobLevel widget.
  String? jobLevelValue1;
  FormFieldController<String>? jobLevelValueController1;
  // State field(s) for Country widget.
  String? countryValue1;
  FormFieldController<String>? countryValueController1;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Category widget.
  JobCategoriesRecord? selectedCategory;
  // State field(s) for JobSubCategory widget.
  String? jobSubCategoryValue;
  FormFieldController<String>? jobSubCategoryValueController;
  // State field(s) for WorkType widget.
  String? workTypeValue;
  FormFieldController<String>? workTypeValueController;
  // State field(s) for MonthlySalary widget.
  String? monthlySalaryValue1;
  FormFieldController<String>? monthlySalaryValueController1;
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
  // State field(s) for Employer widget.
  FocusNode? employerFocusNode2;
  TextEditingController? employerTextController2;
  String? Function(BuildContext, String?)? employerTextController2Validator;
  String? _employerTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Employer is required';
    }

    return null;
  }

  // State field(s) for JobTitle widget.
  FocusNode? jobTitleFocusNode2;
  TextEditingController? jobTitleTextController2;
  String? Function(BuildContext, String?)? jobTitleTextController2Validator;
  String? _jobTitleTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Job Title is required';
    }

    return null;
  }

  // State field(s) for JobLevel widget.
  String? jobLevelValue2;
  FormFieldController<String>? jobLevelValueController2;
  // State field(s) for Country widget.
  String? countryValue2;
  FormFieldController<String>? countryValueController2;
  // State field(s) for Industry widget.
  String? industryValue;
  FormFieldController<String>? industryValueController;
  // State field(s) for JobCategory widget.
  String? jobCategoryValue;
  FormFieldController<String>? jobCategoryValueController;
  // State field(s) for Worktype widget.
  String? worktypeValue;
  FormFieldController<String>? worktypeValueController;
  // State field(s) for MonthlySalary widget.
  String? monthlySalaryValue2;
  FormFieldController<String>? monthlySalaryValueController2;
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
    employerTextController1Validator = _employerTextController1Validator;
    jobTitleTextController1Validator = _jobTitleTextController1Validator;
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    employerTextController2Validator = _employerTextController2Validator;
    jobTitleTextController2Validator = _jobTitleTextController2Validator;
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    employerFocusNode1?.dispose();
    employerTextController1?.dispose();

    jobTitleFocusNode1?.dispose();
    jobTitleTextController1?.dispose();

    careerProfileStatModel.dispose();
    employerFocusNode2?.dispose();
    employerTextController2?.dispose();

    jobTitleFocusNode2?.dispose();
    jobTitleTextController2?.dispose();

    footerModel.dispose();
    textFieldFocusNode?.dispose();
    textController5?.dispose();

    sideBarModel.dispose();
  }
}
