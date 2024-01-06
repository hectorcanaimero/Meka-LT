// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:carousel_slider/carousel_slider.dart';

class CarroselWidget extends StatefulWidget {
  const CarroselWidget({
    Key? key,
    this.width,
    this.height,
    required this.imageList,
    required this.autoStart,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> imageList;
  final bool autoStart;

  @override
  _CarroselWidgetState createState() => _CarroselWidgetState();
}

class _CarroselWidgetState extends State<CarroselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: widget.autoStart,
        // Aquí puedes añadir más opciones como duración, dirección, etc.
      ),
      items: widget.imageList
          .map((item) => Container(
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: widget.width,
                  height: widget.height,
                ),
              ))
          .toList(),
    );
  }
}
