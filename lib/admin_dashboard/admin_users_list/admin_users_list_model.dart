import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'admin_users_list_widget.dart' show AdminUsersListWidget;
import 'package:flutter/material.dart';

class AdminUsersListModel extends FlutterFlowModel<AdminUsersListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for SideBar component.
  late SideBarModel sideBarModel2;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for SearchUser widget.
  FocusNode? searchUserFocusNode;
  TextEditingController? searchUserTextController;
  String? Function(BuildContext, String?)? searchUserTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<UsersRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<UsersRecord>();

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    sideBarModel2 = createModel(context, () => SideBarModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sideBarModel1.dispose();
    sideBarModel2.dispose();
    headerModel.dispose();
    searchUserFocusNode?.dispose();
    searchUserTextController?.dispose();

    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
  }
}
