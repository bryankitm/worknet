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

Future openDrawer(BuildContext context) async {
  // Check if the current context has a Scaffold
  final scaffoldState = Scaffold.maybeOf(context);

  // If Scaffold is found and has a drawer, open it
  if (scaffoldState != null && scaffoldState.hasDrawer) {
    scaffoldState.openDrawer();
  } else {
    debugPrint("No drawer found in the current context");
  }
}
