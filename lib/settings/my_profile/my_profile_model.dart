import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import 'my_profile_widget.dart' show MyProfileWidget;
import 'package:flutter/material.dart';

class MyProfileModel extends FlutterFlowModel<MyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  bool isDataUploading_uploadDataV2 = false;
  FFUploadedFile uploadedLocalFile_uploadDataV2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataV2 = '';

  // State field(s) for YourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for Website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for Gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for JobTitle widget.
  FocusNode? jobTitleFocusNode;
  TextEditingController? jobTitleTextController;
  String? Function(BuildContext, String?)? jobTitleTextControllerValidator;
  // State field(s) for Language widget.
  String? languageValue;
  FormFieldController<String>? languageValueController;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for EmailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for JobType widget.
  String? jobTypeValue;
  FormFieldController<String>? jobTypeValueController;
  // State field(s) for JobCategory widget.
  String? jobCategoryValue;
  FormFieldController<String>? jobCategoryValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in JobCategory widget.
  JobCategoriesRecord? selectedCat;
  // State field(s) for JobSubCategory widget.
  String? jobSubCategoryValue;
  FormFieldController<String>? jobSubCategoryValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    headerModel = createModel(context, () => HeaderModel());
    sideBarModel2 = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel1.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    websiteFocusNode?.dispose();
    websiteTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    jobTitleFocusNode?.dispose();
    jobTitleTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController7?.dispose();

    textFieldFocusNode2?.dispose();
    textController8?.dispose();

    textFieldFocusNode3?.dispose();
    textController9?.dispose();

    textFieldFocusNode4?.dispose();
    textController10?.dispose();

    textFieldFocusNode5?.dispose();
    textController11?.dispose();

    textFieldFocusNode6?.dispose();
    textController12?.dispose();

    headerModel.dispose();
    sideBarModel2.dispose();
  }
}
