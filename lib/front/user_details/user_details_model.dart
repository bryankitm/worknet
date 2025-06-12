import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'user_details_widget.dart' show UserDetailsWidget;
import 'package:flutter/material.dart';

class UserDetailsModel extends FlutterFlowModel<UserDetailsWidget> {
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

  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  // State field(s) for CompanyWebsite widget.
  FocusNode? companyWebsiteFocusNode1;
  TextEditingController? companyWebsiteTextController1;
  String? Function(BuildContext, String?)?
      companyWebsiteTextController1Validator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode1;
  TextEditingController? phoneTextController1;
  String? Function(BuildContext, String?)? phoneTextController1Validator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for Gender widget.
  FocusNode? genderFocusNode1;
  TextEditingController? genderTextController1;
  String? Function(BuildContext, String?)? genderTextController1Validator;
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
  FocusNode? experienceFocusNode1;
  TextEditingController? experienceTextController1;
  String? Function(BuildContext, String?)? experienceTextController1Validator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode1;
  TextEditingController? locationTextController1;
  String? Function(BuildContext, String?)? locationTextController1Validator;
  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode1;
  TextEditingController? linkinTextController1;
  String? Function(BuildContext, String?)? linkinTextController1Validator;
  // State field(s) for SalaryExpectation widget.
  FocusNode? salaryExpectationFocusNode1;
  TextEditingController? salaryExpectationTextController1;
  String? Function(BuildContext, String?)?
      salaryExpectationTextController1Validator;
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
  FocusNode? instagramFocusNode1;
  TextEditingController? instagramTextController1;
  String? Function(BuildContext, String?)? instagramTextController1Validator;
  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode2;
  TextEditingController? linkinTextController2;
  String? Function(BuildContext, String?)? linkinTextController2Validator;
  // State field(s) for Youtube widget.
  FocusNode? youtubeFocusNode2;
  TextEditingController? youtubeTextController2;
  String? Function(BuildContext, String?)? youtubeTextController2Validator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  // State field(s) for CompanyWebsite widget.
  FocusNode? companyWebsiteFocusNode2;
  TextEditingController? companyWebsiteTextController2;
  String? Function(BuildContext, String?)?
      companyWebsiteTextController2Validator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode2;
  TextEditingController? phoneTextController2;
  String? Function(BuildContext, String?)? phoneTextController2Validator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for Gender widget.
  FocusNode? genderFocusNode2;
  TextEditingController? genderTextController2;
  String? Function(BuildContext, String?)? genderTextController2Validator;
  // State field(s) for Facebook widget.
  FocusNode? facebookFocusNode3;
  TextEditingController? facebookTextController3;
  String? Function(BuildContext, String?)? facebookTextController3Validator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode4;
  TextEditingController? whatsappTextController4;
  String? Function(BuildContext, String?)? whatsappTextController4Validator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode5;
  TextEditingController? whatsappTextController5;
  String? Function(BuildContext, String?)? whatsappTextController5Validator;
  // State field(s) for twitter widget.
  FocusNode? twitterFocusNode3;
  TextEditingController? twitterTextController3;
  String? Function(BuildContext, String?)? twitterTextController3Validator;
  // State field(s) for Experience widget.
  FocusNode? experienceFocusNode2;
  TextEditingController? experienceTextController2;
  String? Function(BuildContext, String?)? experienceTextController2Validator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode2;
  TextEditingController? locationTextController2;
  String? Function(BuildContext, String?)? locationTextController2Validator;
  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode3;
  TextEditingController? linkinTextController3;
  String? Function(BuildContext, String?)? linkinTextController3Validator;
  // State field(s) for SalaryExpectation widget.
  FocusNode? salaryExpectationFocusNode2;
  TextEditingController? salaryExpectationTextController2;
  String? Function(BuildContext, String?)?
      salaryExpectationTextController2Validator;
  // State field(s) for Youtube widget.
  FocusNode? youtubeFocusNode3;
  TextEditingController? youtubeTextController3;
  String? Function(BuildContext, String?)? youtubeTextController3Validator;
  // State field(s) for Facebook widget.
  FocusNode? facebookFocusNode4;
  TextEditingController? facebookTextController4;
  String? Function(BuildContext, String?)? facebookTextController4Validator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode6;
  TextEditingController? whatsappTextController6;
  String? Function(BuildContext, String?)? whatsappTextController6Validator;
  // State field(s) for twitter widget.
  FocusNode? twitterFocusNode4;
  TextEditingController? twitterTextController4;
  String? Function(BuildContext, String?)? twitterTextController4Validator;
  // State field(s) for Instagram widget.
  FocusNode? instagramFocusNode2;
  TextEditingController? instagramTextController2;
  String? Function(BuildContext, String?)? instagramTextController2Validator;
  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode4;
  TextEditingController? linkinTextController4;
  String? Function(BuildContext, String?)? linkinTextController4Validator;
  // State field(s) for Youtube widget.
  FocusNode? youtubeFocusNode4;
  TextEditingController? youtubeTextController4;
  String? Function(BuildContext, String?)? youtubeTextController4Validator;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    footerModel = createModel(context, () => FooterModel());
    headerMainModel = createModel(context, () => HeaderMainModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    companyWebsiteFocusNode1?.dispose();
    companyWebsiteTextController1?.dispose();

    phoneFocusNode1?.dispose();
    phoneTextController1?.dispose();

    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    genderFocusNode1?.dispose();
    genderTextController1?.dispose();

    facebookFocusNode1?.dispose();
    facebookTextController1?.dispose();

    whatsappFocusNode1?.dispose();
    whatsappTextController1?.dispose();

    whatsappFocusNode2?.dispose();
    whatsappTextController2?.dispose();

    twitterFocusNode1?.dispose();
    twitterTextController1?.dispose();

    experienceFocusNode1?.dispose();
    experienceTextController1?.dispose();

    locationFocusNode1?.dispose();
    locationTextController1?.dispose();

    linkinFocusNode1?.dispose();
    linkinTextController1?.dispose();

    salaryExpectationFocusNode1?.dispose();
    salaryExpectationTextController1?.dispose();

    youtubeFocusNode1?.dispose();
    youtubeTextController1?.dispose();

    facebookFocusNode2?.dispose();
    facebookTextController2?.dispose();

    whatsappFocusNode3?.dispose();
    whatsappTextController3?.dispose();

    twitterFocusNode2?.dispose();
    twitterTextController2?.dispose();

    instagramFocusNode1?.dispose();
    instagramTextController1?.dispose();

    linkinFocusNode2?.dispose();
    linkinTextController2?.dispose();

    youtubeFocusNode2?.dispose();
    youtubeTextController2?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    companyWebsiteFocusNode2?.dispose();
    companyWebsiteTextController2?.dispose();

    phoneFocusNode2?.dispose();
    phoneTextController2?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    genderFocusNode2?.dispose();
    genderTextController2?.dispose();

    facebookFocusNode3?.dispose();
    facebookTextController3?.dispose();

    whatsappFocusNode4?.dispose();
    whatsappTextController4?.dispose();

    whatsappFocusNode5?.dispose();
    whatsappTextController5?.dispose();

    twitterFocusNode3?.dispose();
    twitterTextController3?.dispose();

    experienceFocusNode2?.dispose();
    experienceTextController2?.dispose();

    locationFocusNode2?.dispose();
    locationTextController2?.dispose();

    linkinFocusNode3?.dispose();
    linkinTextController3?.dispose();

    salaryExpectationFocusNode2?.dispose();
    salaryExpectationTextController2?.dispose();

    youtubeFocusNode3?.dispose();
    youtubeTextController3?.dispose();

    facebookFocusNode4?.dispose();
    facebookTextController4?.dispose();

    whatsappFocusNode6?.dispose();
    whatsappTextController6?.dispose();

    twitterFocusNode4?.dispose();
    twitterTextController4?.dispose();

    instagramFocusNode2?.dispose();
    instagramTextController2?.dispose();

    linkinFocusNode4?.dispose();
    linkinTextController4?.dispose();

    youtubeFocusNode4?.dispose();
    youtubeTextController4?.dispose();

    footerModel.dispose();
    headerMainModel.dispose();
    sideBarModel.dispose();
  }
}
