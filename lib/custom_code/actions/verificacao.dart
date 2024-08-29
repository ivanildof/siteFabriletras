// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

Future<bool> verificacao() async {
  // verifique se o usuário está usando celular ou não
  bool isMobile = false;
  try {
    if (Platform.isAndroid || Platform.isIOS) {
      isMobile = true;
    }
  } catch (e) {
    // Handle any potential exceptions here
    print('Error: $e');
  }
  return isMobile;
}
