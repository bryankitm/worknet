import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  int? dropDownValue1;
  FormFieldController<int>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  int? dropDownValue2;
  FormFieldController<int>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController3;
  int carouselCurrentIndex3 = 1;

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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    footerModel.dispose();
    sideBarFrontModel.dispose();
  }
}
