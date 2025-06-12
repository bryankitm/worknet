import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'admin_company_list_widget.dart' show AdminCompanyListWidget;
import 'package:flutter/material.dart';

class AdminCompanyListModel extends FlutterFlowModel<AdminCompanyListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<CompaniesRecord>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<CompaniesRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<CompaniesRecord>();
  // Model for SideBar component.
  late SideBarModel sideBarModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel1 = createModel(context, () => SideBarModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    sideBarModel2 = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    paginatedDataTableController1.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    paginatedDataTableController2.dispose();
    sideBarModel2.dispose();
  }
}
