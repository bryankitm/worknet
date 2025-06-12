// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/declaring_global_keys.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:file_picker/file_picker.dart';

class HtmlEditorEnhanced extends StatefulWidget {
  factory HtmlEditorEnhanced({
    double? width,
    double? height,
    required String editorKeyValue,
    String? initialText, // Nullable initial text
  }) {
    return HtmlEditorEnhanced._internal(
      key: editorKeys[editorKeyValue], // Use the global key map for the editor
      width: width,
      height: height,
      editorKeyValue: editorKeyValue,
      initialText: initialText,
    );
  }

  HtmlEditorEnhanced._internal({
    Key? key,
    this.width,
    this.height,
    required this.editorKeyValue,
    this.initialText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String editorKeyValue;
  final String? initialText; // Nullable initial text

  @override
  HtmlEditorEnhancedState createState() => HtmlEditorEnhancedState();
}

class HtmlEditorEnhancedState extends State<HtmlEditorEnhanced> {
  late HtmlEditorController controller;
  bool _isEditorReady = false; // Flag to track editor readiness

  @override
  void initState() {
    super.initState();
    controller = HtmlEditorController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 500), () {
        _updateEditorFromAppState();
      });
    });
  }

  @override
  void didUpdateWidget(covariant HtmlEditorEnhanced oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateEditorFromAppState();
  }

  void _updateAppState(String? updatedContent) {
    if (updatedContent != null) {
      setState(() {
        FFAppState().htmlContent = updatedContent;
      });
    }
  }

  void _updateEditorFromAppState() {
    final String currentHtmlContent =
        FFAppState().htmlContent?.isNotEmpty == true
            ? FFAppState().htmlContent!
            : widget.initialText ?? '';

    if (currentHtmlContent.isNotEmpty) {
      if (_isEditorReady) {
        controller.setText(currentHtmlContent); // Remove await here
      } else {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Future.delayed(Duration(milliseconds: 500), () {
            controller.setText(currentHtmlContent); // Remove await here
            setState(() {
              _isEditorReady = true;
            });
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: HtmlEditor(
        controller: controller,
        htmlEditorOptions: HtmlEditorOptions(
          hint: "Your text here...",
          shouldEnsureVisible: true,
          autoAdjustHeight: true,
          adjustHeightForKeyboard: true,
          spellCheck: true,
        ),
        htmlToolbarOptions: HtmlToolbarOptions(
          toolbarPosition: ToolbarPosition.aboveEditor,
          toolbarType:
              ToolbarType.nativeGrid, // Use native grid for compact view
          defaultToolbarButtons: [
            StyleButtons(), // Keep style buttons (bold, italic, etc.)
            FontSettingButtons(), // Font settings buttons
            FontButtons(), // Font size and family
            ListButtons(), // List (bullets/numbered)
            ParagraphButtons(), // Paragraph settings (alignment, indent, etc.)
          ],
        ),
        callbacks: Callbacks(
          onInit: () {
            _isEditorReady = true;
            _updateEditorFromAppState(); // Ensure the initial content is set
          },
          onChangeContent: (String? updatedContent) {
            _updateAppState(updatedContent);
          },
        ),
      ),
    );
  }
}
