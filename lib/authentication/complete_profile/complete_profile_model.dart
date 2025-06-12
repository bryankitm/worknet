import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'complete_profile_widget.dart' show CompleteProfileWidget;
import 'package:flutter/material.dart';

class CompleteProfileModel extends FlutterFlowModel<CompleteProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  bool isDataUploading_uploadDataProfile = false;
  FFUploadedFile uploadedLocalFile_uploadDataProfile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataProfile = '';

  // State field(s) for YourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  String? _yourNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Full Name is required';
    }

    if (!RegExp('^[A-Za-z]+([ \'-][A-Za-z]+)*\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

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
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone is required';
    }

    if (!RegExp('^\\+?[1-9]\\d{1,14}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for JobTitle widget.
  FocusNode? jobTitleFocusNode;
  TextEditingController? jobTitleTextController;
  String? Function(BuildContext, String?)? jobTitleTextControllerValidator;
  String? _jobTitleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Job Title is required';
    }

    if (!RegExp('^[a-zA-Z\\s\\-\']+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Language widget.
  String? languageValue;
  FormFieldController<String>? languageValueController;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Age is required';
    }

    if (!RegExp('^\\d{2}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for EmailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

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
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    yourNameTextControllerValidator = _yourNameTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    jobTitleTextControllerValidator = _jobTitleTextControllerValidator;
    ageTextControllerValidator = _ageTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
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

    footerModel.dispose();
    sideBarModel.dispose();
  }
}
