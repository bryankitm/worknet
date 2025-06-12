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

Future<List<String>> querySubCategory(
    List<DocumentReference>? subCatLists) async {
  // action to query the subcat with the argument and retuen the subCatName field list

  List<String> subCatNames = [];

  if (subCatLists != null) {
    for (DocumentReference subCatRef in subCatLists) {
      DocumentSnapshot subCatSnapshot = await subCatRef.get();
      if (subCatSnapshot.exists) {
        String subCatName = subCatSnapshot.get('subCatName');
        subCatNames.add(subCatName);
      }
    }
  }

  return subCatNames;
}
