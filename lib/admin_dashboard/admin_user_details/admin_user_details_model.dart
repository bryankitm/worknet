import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'admin_user_details_widget.dart' show AdminUserDetailsWidget;
import 'package:flutter/material.dart';

class AdminUserDetailsModel extends FlutterFlowModel<AdminUserDetailsWidget> {
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

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for CompanyWebsite widget.
  FocusNode? companyWebsiteFocusNode;
  TextEditingController? companyWebsiteTextController;
  String? Function(BuildContext, String?)?
      companyWebsiteTextControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Gender widget.
  FocusNode? genderFocusNode;
  TextEditingController? genderTextController;
  String? Function(BuildContext, String?)? genderTextControllerValidator;
  // State field(s) for Facebook widget.
  FocusNode? facebookFocusNode1;
  TextEditingController? facebookTextController1;
  String? Function(BuildContext, String?)? facebookTextController1Validator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode1;
  TextEditingController? whatsappTextController1;
  String? Function(BuildContext, String?)? whatsappTextController1Validator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode2;
  TextEditingController? whatsappTextController2;
  String? Function(BuildContext, String?)? whatsappTextController2Validator;
  // State field(s) for twitter widget.
  FocusNode? twitterFocusNode1;
  TextEditingController? twitterTextController1;
  String? Function(BuildContext, String?)? twitterTextController1Validator;
  // State field(s) for Experience widget.
  FocusNode? experienceFocusNode;
  TextEditingController? experienceTextController;
  String? Function(BuildContext, String?)? experienceTextControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode1;
  TextEditingController? linkinTextController1;
  String? Function(BuildContext, String?)? linkinTextController1Validator;
  // State field(s) for SalaryExpectation widget.
  FocusNode? salaryExpectationFocusNode;
  TextEditingController? salaryExpectationTextController;
  String? Function(BuildContext, String?)?
      salaryExpectationTextControllerValidator;
  // State field(s) for Youtube widget.
  FocusNode? youtubeFocusNode1;
  TextEditingController? youtubeTextController1;
  String? Function(BuildContext, String?)? youtubeTextController1Validator;
  // State field(s) for Facebook widget.
  FocusNode? facebookFocusNode2;
  TextEditingController? facebookTextController2;
  String? Function(BuildContext, String?)? facebookTextController2Validator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode3;
  TextEditingController? whatsappTextController3;
  String? Function(BuildContext, String?)? whatsappTextController3Validator;
  // State field(s) for twitter widget.
  FocusNode? twitterFocusNode2;
  TextEditingController? twitterTextController2;
  String? Function(BuildContext, String?)? twitterTextController2Validator;
  // State field(s) for Instagram widget.
  FocusNode? instagramFocusNode;
  TextEditingController? instagramTextController;
  String? Function(BuildContext, String?)? instagramTextControllerValidator;
  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode2;
  TextEditingController? linkinTextController2;
  String? Function(BuildContext, String?)? linkinTextController2Validator;
  // State field(s) for Youtube widget.
  FocusNode? youtubeFocusNode2;
  TextEditingController? youtubeTextController2;
  String? Function(BuildContext, String?)? youtubeTextController2Validator;
  // State field(s) for UserAccountStatus widget.
  String? userAccountStatusValue;
  FormFieldController<String>? userAccountStatusValueController;
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
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    companyWebsiteFocusNode?.dispose();
    companyWebsiteTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    genderFocusNode?.dispose();
    genderTextController?.dispose();

    facebookFocusNode1?.dispose();
    facebookTextController1?.dispose();

    whatsappFocusNode1?.dispose();
    whatsappTextController1?.dispose();

    whatsappFocusNode2?.dispose();
    whatsappTextController2?.dispose();

    twitterFocusNode1?.dispose();
    twitterTextController1?.dispose();

    experienceFocusNode?.dispose();
    experienceTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    linkinFocusNode1?.dispose();
    linkinTextController1?.dispose();

    salaryExpectationFocusNode?.dispose();
    salaryExpectationTextController?.dispose();

    youtubeFocusNode1?.dispose();
    youtubeTextController1?.dispose();

    facebookFocusNode2?.dispose();
    facebookTextController2?.dispose();

    whatsappFocusNode3?.dispose();
    whatsappTextController3?.dispose();

    twitterFocusNode2?.dispose();
    twitterTextController2?.dispose();

    instagramFocusNode?.dispose();
    instagramTextController?.dispose();

    linkinFocusNode2?.dispose();
    linkinTextController2?.dispose();

    youtubeFocusNode2?.dispose();
    youtubeTextController2?.dispose();

    headerModel.dispose();
    sideBarModel2.dispose();
  }
}
