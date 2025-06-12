import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import '/footer_header/user_list_small/user_list_small_widget.dart';
import 'support_submit_ticket_widget.dart' show SupportSubmitTicketWidget;
import 'package:flutter/material.dart';

class SupportSubmitTicketModel
    extends FlutterFlowModel<SupportSubmitTicketWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  bool isDataUploading_uploadDataXhs = false;
  FFUploadedFile uploadedLocalFile_uploadDataXhs =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataXhs = '';

  // Stores action output result for [Bottom Sheet - user_List] action in Container widget.
  UsersRecord? userRefSelected;
  // Model for user_ListSmall component.
  late UserListSmallModel userListSmallModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    headerModel = createModel(context, () => HeaderModel());
    userListSmallModel = createModel(context, () => UserListSmallModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    headerModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    userListSmallModel.dispose();
  }
}
