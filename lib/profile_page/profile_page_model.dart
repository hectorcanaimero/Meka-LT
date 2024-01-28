import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ghwrtf0l' /* Campo obligatorio */,
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
        't7f9pi0u' /* Campo obligatorio */,
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
        '26ssv8j5' /* Campo obligatorio */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'e2lnoodb' /* Digite un email valido */,
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
        '2lfr9shr' /* Campo obligatorio */,
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
  // Stores action output result for [Backend Call - API (Update User)] action in Button widget.
  ApiCallResponse? resultUpdate;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    emailLoginControllerValidator = _emailLoginControllerValidator;
    phoneRegisterControllerValidator = _phoneRegisterControllerValidator;
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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
