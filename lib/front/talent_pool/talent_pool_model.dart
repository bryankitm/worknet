import '/backend/backend.dart';
import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'talent_pool_widget.dart' show TalentPoolWidget;
import 'package:flutter/material.dart';

class TalentPoolModel extends FlutterFlowModel<TalentPoolWidget> {
  ///  Local state fields for this page.

  String displayType = 'Grid';

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  List<JobCategoriesRecord>? dropDownPreviousSnapshot;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  JobCategoriesRecord? categoryRefCopy;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    footerModel.dispose();
    sideBarFrontModel.dispose();
  }
}
