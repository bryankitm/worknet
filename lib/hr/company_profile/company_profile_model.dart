import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import 'company_profile_widget.dart' show CompanyProfileWidget;
import 'package:flutter/material.dart';

class CompanyProfileModel extends FlutterFlowModel<CompanyProfileWidget> {
  ///  Local state fields for this page.

  bool? hoverMenu = false;

  List<String> imagesUploadedComp = [];
  void addToImagesUploadedComp(String item) => imagesUploadedComp.add(item);
  void removeFromImagesUploadedComp(String item) =>
      imagesUploadedComp.remove(item);
  void removeAtIndexFromImagesUploadedComp(int index) =>
      imagesUploadedComp.removeAt(index);
  void insertAtIndexInImagesUploadedComp(int index, String item) =>
      imagesUploadedComp.insert(index, item);
  void updateImagesUploadedCompAtIndex(int index, Function(String) updateFn) =>
      imagesUploadedComp[index] = updateFn(imagesUploadedComp[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  bool isDataUploading_uploadDataCologoMb = false;
  FFUploadedFile uploadedLocalFile_uploadDataCologoMb =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataCologoMb = '';

  bool isDataUploading_uploadDataCogalaMb = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataCogalaMb = [];
  List<String> uploadedFileUrls_uploadDataCogalaMb = [];

  bool isDataUploading_uploadDataCologo = false;
  FFUploadedFile uploadedLocalFile_uploadDataCologo =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataCologo = '';

  bool isDataUploading_uploadDataCogala = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataCogala = [];
  List<String> uploadedFileUrls_uploadDataCogala = [];

  // State field(s) for CompanyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  // State field(s) for CompanyWebsite widget.
  FocusNode? companyWebsiteFocusNode;
  TextEditingController? companyWebsiteTextController;
  String? Function(BuildContext, String?)?
      companyWebsiteTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for Industry widget.
  String? industryValue;
  FormFieldController<String>? industryValueController;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TeamSize widget.
  FocusNode? teamSizeFocusNode;
  TextEditingController? teamSizeTextController;
  String? Function(BuildContext, String?)? teamSizeTextControllerValidator;
  // State field(s) for Facebook widget.
  FocusNode? facebookFocusNode;
  TextEditingController? facebookTextController;
  String? Function(BuildContext, String?)? facebookTextControllerValidator;
  String? _facebookTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'facebook url is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?(www\\.)?facebook\\.com\\/[A-Za-z0-9.]{5,50}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  String? _whatsappTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'whatsapp link is required';
    }

    if (!RegExp('^(https?:\\/\\/)?(www\\.)?wa\\.me\\/[0-9]{10,15}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for twitter widget.
  FocusNode? twitterFocusNode;
  TextEditingController? twitterTextController;
  String? Function(BuildContext, String?)? twitterTextControllerValidator;
  String? _twitterTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'x url is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?(www\\.)?(twitter|x)\\.com\\/[A-Za-z0-9_]{1,15}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Instagram widget.
  FocusNode? instagramFocusNode;
  TextEditingController? instagramTextController;
  String? Function(BuildContext, String?)? instagramTextControllerValidator;
  String? _instagramTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'instagram url is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?(www\\.)?instagram\\.com\\/[A-Za-z0-9._]{1,30}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode;
  TextEditingController? linkinTextController;
  String? Function(BuildContext, String?)? linkinTextControllerValidator;
  String? _linkinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'linkedin url is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?(www\\.)?linkedin\\.com\\/(in|company)\\/[A-Za-z0-9_-]{3,100}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Youtube widget.
  FocusNode? youtubeFocusNode;
  TextEditingController? youtubeTextController;
  String? Function(BuildContext, String?)? youtubeTextControllerValidator;
  String? _youtubeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'youtube url is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?(www\\.)?youtube\\.com\\/(channel|c|user|watch\\?v=)[A-Za-z0-9_-]+\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    facebookTextControllerValidator = _facebookTextControllerValidator;
    whatsappTextControllerValidator = _whatsappTextControllerValidator;
    twitterTextControllerValidator = _twitterTextControllerValidator;
    instagramTextControllerValidator = _instagramTextControllerValidator;
    linkinTextControllerValidator = _linkinTextControllerValidator;
    youtubeTextControllerValidator = _youtubeTextControllerValidator;
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

    facebookFocusNode?.dispose();
    facebookTextController?.dispose();

    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    twitterFocusNode?.dispose();
    twitterTextController?.dispose();

    instagramFocusNode?.dispose();
    instagramTextController?.dispose();

    linkinFocusNode?.dispose();
    linkinTextController?.dispose();

    youtubeFocusNode?.dispose();
    youtubeTextController?.dispose();

    headerModel.dispose();
    sideBarModel2.dispose();
  }
}
