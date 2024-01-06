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

import 'package:flutter_markdown/flutter_markdown.dart';

class ReadMarkdownWidget extends StatefulWidget {
  const ReadMarkdownWidget({
    Key? key,
    this.width,
    this.height,
    required this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String data;

  @override
  _ReadMarkdownWidgetState createState() => _ReadMarkdownWidgetState();
}

class _ReadMarkdownWidgetState extends State<ReadMarkdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Markdown(
        data: widget.data,
      ),
    );
  }
}
