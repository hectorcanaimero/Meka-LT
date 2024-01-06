import '/backend/api_requests/api_calls.dart';
import '/components/comments_component_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'view_service_component_widget.dart' show ViewServiceComponentWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewServiceComponentModel
    extends FlutterFlowModel<ViewServiceComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for iuser widget.
  bool iuserHovered1 = false;
  // State field(s) for iuser widget.
  bool iuserHovered2 = false;
  // State field(s) for iuser widget.
  bool iuserHovered3 = false;
  // State field(s) for iuser widget.
  bool iuserHovered4 = false;
  // State field(s) for iuser widget.
  bool iuserHovered5 = false;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for iuser widget.
  bool iuserHovered6 = false;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (Service Update )] action in Button widget.
  ApiCallResponse? apiResult8jb;
  // Stores action output result for [Backend Call - API (Service Update )] action in CancellButton widget.
  ApiCallResponse? apiReturnOpen;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
