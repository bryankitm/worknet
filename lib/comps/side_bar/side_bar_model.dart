import '/flutter_flow/flutter_flow_util.dart';
import 'side_bar_widget.dart' show SideBarWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SideBarModel extends FlutterFlowModel<SideBarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
