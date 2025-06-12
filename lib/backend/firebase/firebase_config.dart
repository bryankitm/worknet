import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC4Gbh4J5KIKJC_wHtdt6g7vul2BkWv8NA",
            authDomain: "opportune-6ef13.firebaseapp.com",
            projectId: "opportune-6ef13",
            storageBucket: "opportune-6ef13.firebasestorage.app",
            messagingSenderId: "74680362523",
            appId: "1:74680362523:web:d823ba89691a0bda743abe",
            measurementId: "G-TT469BX44Y"));
  } else {
    await Firebase.initializeApp();
  }
}
