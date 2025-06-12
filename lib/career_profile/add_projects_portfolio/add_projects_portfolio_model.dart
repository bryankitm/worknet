import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'add_projects_portfolio_widget.dart' show AddProjectsPortfolioWidget;
import 'package:flutter/material.dart';

class AddProjectsPortfolioModel
    extends FlutterFlowModel<AddProjectsPortfolioWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'portfolio name is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Url is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?([\\w\\-]+(\\.[\\w\\-]+)+)(:[0-9]+)?(\\/[^\\s]*)?\$')
        .hasMatch(val)) {
      return 'Invalid URL format. Please enter a valid URL starting with http:// or https://';
    }
    return null;
  }

  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Portfolio Name is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'portfolio link is required is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?([\\w\\-]+(\\.[\\w\\-]+)+)(:[0-9]+)?(\\/[^\\s]*)?\$')
        .hasMatch(val)) {
      return 'Invalid URL format. Please enter a valid URL starting with http:// or https://';
    }
    return null;
  }

  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    careerProfileStatModel.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    footerModel.dispose();
    sideBarModel.dispose();
  }
}
