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

Future<DateTime> getStartDate(String? filter) async {
  DateTime now = DateTime.now();

  if (filter == 'Last Hour') {
    return now.subtract(Duration(hours: 1));
  } else if (filter == 'Last 24 Hours') {
    return now.subtract(Duration(hours: 24));
  } else if (filter == 'Last 48 Hours') {
    return now.subtract(Duration(hours: 48));
  } else if (filter == 'Last 7 Days') {
    DateTime startDate = now.subtract(Duration(days: 7));
    return DateTime(startDate.year, startDate.month, startDate.day);
  } else if (filter == 'Last 14 Days') {
    DateTime startDate = now.subtract(Duration(days: 14));
    return DateTime(startDate.year, startDate.month, startDate.day);
  } else if (filter == 'Last 30 Days') {
    DateTime startDate = now.subtract(Duration(days: 30));
    return DateTime(startDate.year, startDate.month, startDate.day);
  } else if (filter == 'Last Month') {
    int currentMonth = now.month;
    int currentYear = now.year;

    if (currentMonth == 1) {
      return DateTime(currentYear - 1, 12, 1); // Start of December last year
    } else {
      return DateTime(currentYear, currentMonth - 1, 1); // Start of last month
    }
  } else if (filter == 'All') {
    return DateTime(1900);
  } else {
    return now;
  }
}
