import '/backend/api_requests/api_calls.dart';
import '/components/view_service_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'notification_component_widget.dart' show NotificationComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationComponentModel
    extends FlutterFlowModel<NotificationComponentWidget> {
  ///  State fields for stateful widgets in this component.

  InstantTimer? timerService;
  // Stores action output result for [Backend Call - API (Servicios Activos)] action in NotificationComponent widget.
  ApiCallResponse? apiInProcess;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    timerService?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
