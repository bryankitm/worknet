import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'create_company_profile_widget.dart' show CreateCompanyProfileWidget;
import 'package:flutter/material.dart';

class CreateCompanyProfileModel
    extends FlutterFlowModel<CreateCompanyProfileWidget> {
  ///  Local state fields for this page.

  bool? hoverMenu = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  bool isDataUploading_uploadCompLogo = false;
  FFUploadedFile uploadedLocalFile_uploadCompLogo =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadCompLogo = '';

  // State field(s) for CompanyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  String? _companyNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Company Name is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    if (!RegExp('^[A-Za-z0-9&\'.,\\- ]{2,50}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for CompanyWebsite widget.
  FocusNode? companyWebsiteFocusNode;
  TextEditingController? companyWebsiteTextController;
  String? Function(BuildContext, String?)?
      companyWebsiteTextControllerValidator;
  String? _companyWebsiteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'website is required';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Has to be a valid website.';
    }
    return null;
  }

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone Number is required';
    }

    if (!RegExp('^\\+?[1-9]\\d{1,14}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Industry widget.
  String? industryValue;
  FormFieldController<String>? industryValueController;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for TeamSize widget.
  FocusNode? teamSizeFocusNode;
  TextEditingController? teamSizeTextController;
  String? Function(BuildContext, String?)? teamSizeTextControllerValidator;
  String? _teamSizeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Team size is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CompaniesRecord? compRef;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    companyNameTextControllerValidator = _companyNameTextControllerValidator;
    companyWebsiteTextControllerValidator =
        _companyWebsiteTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    teamSizeTextControllerValidator = _teamSizeTextControllerValidator;
    headerModel = createModel(context, () => HeaderModel());
    sideBarModel2 = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel1.dispose();
    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    companyWebsiteFocusNode?.dispose();
    companyWebsiteTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    teamSizeFocusNode?.dispose();
    teamSizeTextController?.dispose();

    headerModel.dispose();
    sideBarModel2.dispose();
  }
}
