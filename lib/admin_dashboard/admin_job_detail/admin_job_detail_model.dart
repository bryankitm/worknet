import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'admin_job_detail_widget.dart' show AdminJobDetailWidget;
import 'package:flutter/material.dart';

class AdminJobDetailModel extends FlutterFlowModel<AdminJobDetailWidget> {
  ///  Local state fields for this page.

  List<String> uploadedPhotos = [];
  void addToUploadedPhotos(String item) => uploadedPhotos.add(item);
  void removeFromUploadedPhotos(String item) => uploadedPhotos.remove(item);
  void removeAtIndexFromUploadedPhotos(int index) =>
      uploadedPhotos.removeAt(index);
  void insertAtIndexInUploadedPhotos(int index, String item) =>
      uploadedPhotos.insert(index, item);
  void updateUploadedPhotosAtIndex(int index, Function(String) updateFn) =>
      uploadedPhotos[index] = updateFn(uploadedPhotos[index]);

  DocumentReference? categorySelected;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // State field(s) for JobTitle widget.
  FocusNode? jobTitleFocusNode;
  TextEditingController? jobTitleTextController;
  String? Function(BuildContext, String?)? jobTitleTextControllerValidator;
  String? _jobTitleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'mindpace is required';
    }

    return null;
  }

  // State field(s) for OfferedSalary widget.
  FocusNode? offeredSalaryFocusNode;
  TextEditingController? offeredSalaryTextController;
  String? Function(BuildContext, String?)? offeredSalaryTextControllerValidator;
  // State field(s) for Gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Kampala (U), Kyabakadde Road is required';
    }

    return null;
  }

  // State field(s) for JobCategory widget.
  String? jobCategoryValue;
  FormFieldController<String>? jobCategoryValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in JobCategory widget.
  JobCategoriesRecord? selectedCatRef;
  // State field(s) for JobSubCategory widget.
  String? jobSubCategoryValue;
  FormFieldController<String>? jobSubCategoryValueController;
  // State field(s) for Experience widget.
  String? experienceValue;
  FormFieldController<String>? experienceValueController;
  // State field(s) for Country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  // State field(s) for JobType widget.
  String? jobTypeValue;
  FormFieldController<String>? jobTypeValueController;
  // State field(s) for Qualification widget.
  String? qualificationValue;
  FormFieldController<String>? qualificationValueController;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for Website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    jobTitleTextControllerValidator = _jobTitleTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
    headerModel = createModel(context, () => HeaderModel());
    sideBarModel2 = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel1.dispose();
    jobTitleFocusNode?.dispose();
    jobTitleTextController?.dispose();

    offeredSalaryFocusNode?.dispose();
    offeredSalaryTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    websiteFocusNode?.dispose();
    websiteTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController6?.dispose();

    headerModel.dispose();
    sideBarModel2.dispose();
  }
}
