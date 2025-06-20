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

import 'package:firebase_auth/firebase_auth.dart';

Future<String> changePassword(BuildContext context, String currentPassword,
    String newPassword, String email) async {
  try {
    // Check if the email is correct
    User? user = FirebaseAuth.instance.currentUser;
    if (user?.email != email) {
      return 'Incorrect email.';
    }

    // Reauthenticate the user.
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );
    await user?.reauthenticateWithCredential(credential);

    // If reauthentication is successful, change the password.
    await user?.updatePassword(newPassword);

    // Password changed successfully.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Password changed successfully.'),
        backgroundColor: Colors.green,
      ),
    );
    return 'Password changed successfully.';
  } catch (e) {
    // Handle reauthentication errors and password change errors.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error changing password: $e'),
        backgroundColor: Colors.red,
      ),
    );
    return 'Error changing password: $e';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
