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

import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

Future<List<DocumentReference>> querySubCat(List<String>? subCatRefs) async {
  // Return an empty list if subCatRefs is null or empty
  if (subCatRefs == null || subCatRefs.isEmpty) {
    return [];
  }

  List<DocumentReference> matchingRefs = [];

  try {
    // Query the subcategories collection for documents with subCatName equal to the arguments
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('subcategories')
        .where('subCatName', whereIn: subCatRefs) // Match subCatName
        .get();

    // Add the references of the matching documents to the list
    for (var doc in querySnapshot.docs) {
      matchingRefs.add(doc.reference);
    }
  } catch (e) {
    debugPrint('Error querying subcategories: $e');
  }

  return matchingRefs;
}
