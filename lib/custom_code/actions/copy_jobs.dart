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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> copyJobs() async {
  final jobPostingsCollection =
      FirebaseFirestore.instance.collection('Job_Postings');
  final jobsCollection = FirebaseFirestore.instance.collection('job_posts');

  try {
    // Get all documents from Job_Postings
    final querySnapshot = await jobPostingsCollection.get();

    // Iterate through each document and copy it to Jobs collection
    for (var doc in querySnapshot.docs) {
      await jobsCollection.doc(doc.id).set(doc.data());
    }

    print("✅ All job postings copied successfully!");
  } catch (e) {
    print("❌ Error copying job postings: $e");
  }
}
