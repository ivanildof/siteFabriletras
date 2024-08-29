import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String videoTOurl(String videoYoutube) {
  // convertar o video em uma url
  final videoId = videoYoutube.split('v=')[1];
  final url = 'https://www.youtube.com/watch?v=$videoId';
  return url;
}

Color? trocarCordeFundo(
  Color? colorPrincipal,
  Color? colorSegundaria,
) {
  // troque de cor ao colocar o mouse emcima do contener
// retorna a cor secundária quando o mouse está em cima do contêiner
  return colorPrincipal?.withOpacity(0.8) ?? colorSegundaria;
}
