// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:html_editor_enhanced/html_editor.dart';
import '/custom_code/actions/declaring_global_keys.dart';
import 'package:file_picker/file_picker.dart';
import '/custom_code/widgets/html_editor_enhanced.dart';

Future setTextHtmlEditorEnhanced(
  String? contentToSet,
  String editorKeyValue,
) async {
  GlobalKey<HtmlEditorEnhancedState>? thisWidgetKey =
      editorKeys[editorKeyValue];

  if (thisWidgetKey?.currentState != null && contentToSet != null) {
    // Set content in the editor
    thisWidgetKey!.currentState!.controller.setText(contentToSet);

    // Update FFAppState with the new content
    FFAppState().htmlContent = contentToSet; // Save the content in FFAppState
  } else {
    throw Exception(
        "The GlobalKey for editorKeyValue: $editorKeyValue is not available or the text to set is empty");
  }
}

// Set your action name, define your arguments and return parameter
// and then add the boilerplate code using the green button on the right!
