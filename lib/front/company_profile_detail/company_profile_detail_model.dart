import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'company_profile_detail_widget.dart' show CompanyProfileDetailWidget;
import 'package:flutter/material.dart';

class CompanyProfileDetailModel
    extends FlutterFlowModel<CompanyProfileDetailWidget> {
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

  // Model for SideBarFront component.
  late SideBarFrontModel sideBarFrontModel;
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for CompanyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
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
  // State field(s) for TeamSize widget.
  FocusNode? teamSizeFocusNode;
  TextEditingController? teamSizeTextController;
  String? Function(BuildContext, String?)? teamSizeTextControllerValidator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for Facebook widget.
  FocusNode? facebookFocusNode;
  TextEditingController? facebookTextController;
  String? Function(BuildContext, String?)? facebookTextControllerValidator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  // State field(s) for twitter widget.
  FocusNode? twitterFocusNode;
  TextEditingController? twitterTextController;
  String? Function(BuildContext, String?)? twitterTextControllerValidator;
  // State field(s) for Instagram widget.
  FocusNode? instagramFocusNode;
  TextEditingController? instagramTextController;
  String? Function(BuildContext, String?)? instagramTextControllerValidator;
  // State field(s) for Linkin widget.
  FocusNode? linkinFocusNode;
  TextEditingController? linkinTextController;
  String? Function(BuildContext, String?)? linkinTextControllerValidator;
  // State field(s) for Youtube widget.
  FocusNode? youtubeFocusNode;
  TextEditingController? youtubeTextController;
  String? Function(BuildContext, String?)? youtubeTextControllerValidator;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    sideBarFrontModel = createModel(context, () => SideBarFrontModel());
    headerMainModel = createModel(context, () => HeaderMainModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    sideBarFrontModel.dispose();
    headerMainModel.dispose();
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

    footerModel.dispose();
  }
}
