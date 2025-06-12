import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'hr_staff_list_widget.dart' show HrStaffListWidget;
import 'package:flutter/material.dart';

class HrStaffListModel extends FlutterFlowModel<HrStaffListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel1;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for StaffStatus widget.
  String? staffStatusValue;
  FormFieldController<String>? staffStatusValueController;
  // State field(s) for DataTableMb widget.
  final dataTableMbController = FlutterFlowDataTableController<UsersRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsersRecord>();
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
    headerModel.dispose();
    dataTableMbController.dispose();
    paginatedDataTableController.dispose();
    sideBarModel2.dispose();
  }
}
