import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'admin_company_profile_detail_widget.dart'
    show AdminCompanyProfileDetailWidget;
import 'package:flutter/material.dart';

class AdminCompanyProfileDetailModel
    extends FlutterFlowModel<AdminCompanyProfileDetailWidget> {
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
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<UsersRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<UsersRecord>();
  // State field(s) for AccountStatus widget.
  String? accountStatusValue;
  FormFieldController<String>? accountStatusValueController;
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

    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    headerModel.dispose();
    sideBarModel2.dispose();
  }
}
