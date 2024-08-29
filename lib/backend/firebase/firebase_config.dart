import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD5MJ04gj1vRzLkQ731sBgg0mOE1vGUu_g",
            authDomain: "sitefabriletras-fcd26.firebaseapp.com",
            projectId: "sitefabriletras-fcd26",
            storageBucket: "sitefabriletras-fcd26.appspot.com",
            messagingSenderId: "836897938254",
            appId: "1:836897938254:web:08d8de22cef78387991c1f"));
  } else {
    await Firebase.initializeApp();
  }
}
