import '/backend/api_requests/api_calls.dart';
import '/components/create_company_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'create_user_page_widget.dart' show CreateUserPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateUserPageModel extends FlutterFlowModel<CreateUserPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Upload Storage)] action in Button widget.
  ApiCallResponse? uploadImage;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for phoneRegister widget.
  FocusNode? phoneRegisterFocusNode;
  TextEditingController? phoneRegisterController;
  String? Function(BuildContext, String?)? phoneRegisterControllerValidator;
  // State field(s) for country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  // State field(s) for passwordRegister widget.
  FocusNode? passwordRegisterFocusNode;
  TextEditingController? passwordRegisterController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)? passwordRegisterControllerValidator;
  // Stores action output result for [Backend Call - API (Auth Create User)] action in Button widget.
  ApiCallResponse? apiResultbyl;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordRegisterVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    emailLoginFocusNode?.dispose();
    emailLoginController?.dispose();

    phoneRegisterFocusNode?.dispose();
    phoneRegisterController?.dispose();

    passwordRegisterFocusNode?.dispose();
    passwordRegisterController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
