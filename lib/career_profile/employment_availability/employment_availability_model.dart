import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'employment_availability_widget.dart' show EmploymentAvailabilityWidget;
import 'package:flutter/material.dart';

class EmploymentAvailabilityModel
    extends FlutterFlowModel<EmploymentAvailabilityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  bool isDataUploading_uploadDataCxa = false;
  FFUploadedFile uploadedLocalFile_uploadDataCxa =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataCxa = '';

  // State field(s) for ProfessionalHeadline widget.
  FocusNode? professionalHeadlineFocusNode1;
  TextEditingController? professionalHeadlineTextController1;
  String? Function(BuildContext, String?)?
      professionalHeadlineTextController1Validator;
  // State field(s) for HighestQualification widget.
  String? highestQualificationValue1;
  FormFieldController<String>? highestQualificationValueController1;
  // State field(s) for CurrentJobCategory widget.
  String? currentJobCategoryValue1;
  FormFieldController<String>? currentJobCategoryValueController1;
  // State field(s) for PreferredJobCategory widget.
  String? preferredJobCategoryValue1;
  FormFieldController<String>? preferredJobCategoryValueController1;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue1 = FFPlace();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue2 = FFPlace();
  // State field(s) for YearsofExperience widget.
  String? yearsofExperienceValue1;
  FormFieldController<String>? yearsofExperienceValueController1;
  // State field(s) for WorkType widget.
  String? workTypeValue1;
  FormFieldController<String>? workTypeValueController1;
  // State field(s) for Availability widget.
  String? availabilityValue1;
  FormFieldController<String>? availabilityValueController1;
  // State field(s) for MonthlySalaryExpectationGross widget.
  String? monthlySalaryExpectationGrossValue1;
  FormFieldController<String>? monthlySalaryExpectationGrossValueController1;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;
  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel;
  bool isDataUploading_uploadDataNm3 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNm3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataNm3 = '';

  // State field(s) for ProfessionalHeadline widget.
  FocusNode? professionalHeadlineFocusNode2;
  TextEditingController? professionalHeadlineTextController2;
  String? Function(BuildContext, String?)?
      professionalHeadlineTextController2Validator;
  // State field(s) for HighestQualification widget.
  String? highestQualificationValue2;
  FormFieldController<String>? highestQualificationValueController2;
  // State field(s) for CurrentJobCategory widget.
  String? currentJobCategoryValue2;
  FormFieldController<String>? currentJobCategoryValueController2;
  // State field(s) for PreferredJobCategory widget.
  String? preferredJobCategoryValue2;
  FormFieldController<String>? preferredJobCategoryValueController2;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue3 = FFPlace();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue4 = FFPlace();
  // State field(s) for YearsofExperience widget.
  String? yearsofExperienceValue2;
  FormFieldController<String>? yearsofExperienceValueController2;
  // State field(s) for WorkType widget.
  String? workTypeValue2;
  FormFieldController<String>? workTypeValueController2;
  // State field(s) for Availability widget.
  String? availabilityValue2;
  FormFieldController<String>? availabilityValueController2;
  // State field(s) for MonthlySalaryExpectationGross widget.
  String? monthlySalaryExpectationGrossValue2;
  FormFieldController<String>? monthlySalaryExpectationGrossValueController2;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;
  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    professionalHeadlineFocusNode1?.dispose();
    professionalHeadlineTextController1?.dispose();

    careerProfileStatModel.dispose();
    professionalHeadlineFocusNode2?.dispose();
    professionalHeadlineTextController2?.dispose();

    footerModel.dispose();
    sideBarModel.dispose();
  }
}
