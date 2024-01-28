import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
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

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'epau0ppf' /* Campo obligatorio */,
      );
    }

    return null;
  }

  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nrrd7n3o' /* Campo obligatorio */,
      );
    }

    return null;
  }

  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  String? _emailLoginControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b6g35988' /* Campo obligatorio */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '25gar57a' /* Digite un email valido */,
      );
    }
    return null;
  }

  // State field(s) for phoneRegister widget.
  FocusNode? phoneRegisterFocusNode;
  TextEditingController? phoneRegisterController;
  String? Function(BuildContext, String?)? phoneRegisterControllerValidator;
  String? _phoneRegisterControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tcx2jlla' /* Campo obligatorio */,
      );
    }

    return null;
  }

  // State field(s) for country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  // State field(s) for language widget.
  String? languageValue;
  FormFieldController<String>? languageValueController;
  // State field(s) for passwordRegister widget.
  FocusNode? passwordRegisterFocusNode;
  TextEditingController? passwordRegisterController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)? passwordRegisterControllerValidator;
  String? _passwordRegisterControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'chm6oz3i' /* Campo obligatorio */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'volcp049' /* La contraseña debe ser mayor a... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Auth Create User)] action in Button widget.
  ApiCallResponse? apiResultbyl;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    emailLoginControllerValidator = _emailLoginControllerValidator;
    phoneRegisterControllerValidator = _phoneRegisterControllerValidator;
    passwordRegisterVisibility = false;
    passwordRegisterControllerValidator = _passwordRegisterControllerValidator;
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
