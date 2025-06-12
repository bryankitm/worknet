import '/backend/backend.dart';
import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'job_listing_widget.dart' show JobListingWidget;
import 'package:flutter/material.dart';

class JobListingModel extends FlutterFlowModel<JobListingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for JobCategory widget.
  String? jobCategoryValue;
  FormFieldController<String>? jobCategoryValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in JobCategory widget.
  JobCategoriesRecord? selectedCat;
  // State field(s) for Experience widget.
  String? experienceValue;
  FormFieldController<String>? experienceValueController;
  // State field(s) for WorkType widget.
  String? workTypeValue;
  FormFieldController<String>? workTypeValueController;
  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  List<JobPostingsRecord> simpleSearchResults = [];
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBarFront component.
  late SideBarFrontModel sideBarFrontModel;

  // Added for initial query parameters
  String? initialKeywords;
  String? initialExperience;
  String? initialLocation;
  DocumentReference? initialCategoryRefDoc;
  String? initialCategoryRefString; // To store the string from params

  // To store the actual category DocumentReference for filtering
  DocumentReference? currentCategoryRef;

  // Added for sorting
  String? currentSortField;
  bool isSortDescending = true; // Default to true for 'posted_at'


  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    footerModel = createModel(context, () => FooterModel());
    sideBarFrontModel = createModel(context, () => SideBarFrontModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    searchFocusNode?.dispose();
    searchTextController?.dispose();

    footerModel.dispose();
    sideBarFrontModel.dispose();
  }
}
