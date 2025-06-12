import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'job_detail_widget.dart' show JobDetailWidget;
import 'package:flutter/material.dart';

class JobDetailModel extends FlutterFlowModel<JobDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter1;
  final googleMapsController1 = Completer<GoogleMapController>();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter2;
  final googleMapsController2 = Completer<GoogleMapController>();
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBarFront component.
  late SideBarFrontModel sideBarFrontModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    footerModel = createModel(context, () => FooterModel());
    sideBarFrontModel = createModel(context, () => SideBarFrontModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    footerModel.dispose();
    sideBarFrontModel.dispose();
  }
}
