import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/career_profile_stat/career_profile_stat_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import 'update_language_skill_widget.dart' show UpdateLanguageSkillWidget;
import 'package:flutter/material.dart';

class UpdateLanguageSkillModel
    extends FlutterFlowModel<UpdateLanguageSkillWidget> {
  ///  Local state fields for this page.

  LanguageStruct? language;
  void updateLanguageStruct(Function(LanguageStruct) updateFn) {
    updateFn(language ??= LanguageStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for HeaderMain component.
  late HeaderMainModel headerMainModel;
  // State field(s) for Language widget.
  String? languageValue;
  FormFieldController<String>? languageValueController;
  // State field(s) for Proficiency widget.
  String? proficiencyValue;
  FormFieldController<String>? proficiencyValueController;
  // Model for CareerProfileStat component.
  late CareerProfileStatModel careerProfileStatModel;
  // State field(s) for LanguageM widget.
  String? languageMValue;
  FormFieldController<String>? languageMValueController;
  // State field(s) for ProficiencyM widget.
  String? proficiencyMValue;
  FormFieldController<String>? proficiencyMValueController;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerMainModel = createModel(context, () => HeaderMainModel());
    careerProfileStatModel =
        createModel(context, () => CareerProfileStatModel());
    footerModel = createModel(context, () => FooterModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerMainModel.dispose();
    careerProfileStatModel.dispose();
    footerModel.dispose();
    sideBarModel.dispose();
  }
}
