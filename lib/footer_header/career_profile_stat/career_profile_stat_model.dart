import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'career_profile_stat_widget.dart' show CareerProfileStatWidget;
import 'package:flutter/material.dart';

class CareerProfileStatModel extends FlutterFlowModel<CareerProfileStatWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;
  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;
  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
