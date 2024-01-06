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
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

int numberToString(String id) {
  int item = int.parse(id);
  return item;
}

bool countPicturesService(List<String> photos) {
  int count = photos.length;
  return count > 0 ? true : false;
}

double? getLng(LatLng? current) {
  return current?.longitude;
}

LatLng parseLatLng(
  double lat,
  double lng,
) {
  return LatLng(lat, lng);
}

DocumentReference trasnsformReference(String path) {
  String ruta = '/services/${path}';
  DocumentReference store = FirebaseFirestore.instance.doc(ruta);
  return store;
}

String parseImagePath(String url) {
  return url;
}

double? getLat(LatLng? current) {
  return current?.latitude;
}

DateTime convertTimestamp(int timestamp) {
  DateTime fecha = DateTime.fromMillisecondsSinceEpoch(timestamp);
  return fecha;
}

DateTime parseData(String data) {
  DateFormat formatoEntrada = DateFormat("dd-MM-yyyyTHH:mm");
  DateTime fecha = formatoEntrada.parse(data);
  return fecha;
}
