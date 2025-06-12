import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_job_widget.dart' show FilterJobWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FilterJobModel extends FlutterFlowModel<FilterJobWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  List<JobPostingsRecord> simpleSearchResults = [];
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for JobCategory widget.
  FormFieldController<String>? jobCategoryValueController;
  List<JobCategoriesRecord>? jobCategoryPreviousSnapshot;
  // Stores action output result for [Firestore Query - Query a collection] action in JobCategory widget.
  JobCategoriesRecord? selectedCategory;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for WorkType widget.
  FormFieldController<String>? workTypeValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Experience widget.
  FormFieldController<String>? experienceValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController; // This seems to be for 'Order By', will be removed from UI

  // Added for Location
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();

    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    locationFocusNode?.dispose();
    locationTextController?.dispose();
  }

  /// Additional helper methods.
  String? get jobCategoryValue => jobCategoryValueController?.value;
  String? get workTypeValue => workTypeValueController?.value;
  String? get experienceValue => experienceValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
