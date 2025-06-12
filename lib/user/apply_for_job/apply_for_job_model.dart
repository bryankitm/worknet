import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import '/index.dart';
import 'apply_for_job_widget.dart' show ApplyForJobWidget;
import 'package:flutter/material.dart';

class ApplyForJobModel extends FlutterFlowModel<ApplyForJobWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  BookmarkedJobsRecord? queriedJob;
  bool isDataUploading_uploadData27c = false;
  FFUploadedFile uploadedLocalFile_uploadData27c =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData27c = '';

  // CV Selection State
  String cvOption = 'profile'; // Default to 'profile'
  String userUploadedCvUrl = '';
  String userUploadedCvName = '';
  FormFieldController<String>? cvOptionController;

  // State for bookmark icon
  bool isJobBookmarked = false;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    headerModel.dispose();
  }
}
