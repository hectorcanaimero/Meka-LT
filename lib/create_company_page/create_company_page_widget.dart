import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/select_map_address_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shake/shake.dart';
import 'create_company_page_model.dart';
export 'create_company_page_model.dart';

class CreateCompanyPageWidget extends StatefulWidget {
  const CreateCompanyPageWidget({super.key});

  @override
  State<CreateCompanyPageWidget> createState() =>
      _CreateCompanyPageWidgetState();
}

class _CreateCompanyPageWidgetState extends State<CreateCompanyPageWidget> {
  late CreateCompanyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late ShakeDetector shakeDetector;
  var shakeActionInProgress = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateCompanyPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateCompanyPage'});
    // On shake action.
    shakeDetector = ShakeDetector.autoStart(
      onPhoneShake: () async {
        if (shakeActionInProgress) {
          return;
        }
        shakeActionInProgress = true;
        try {
          logFirebaseEvent('CREATE_COMPANY_CreateCompanyPage_ON_PHON');
          logFirebaseEvent('CreateCompanyPage_backend_call');
          _model.apiResultCategories =
              await MekaGroup.todasLasCategoriasCall.call();
        } finally {
          shakeActionInProgress = false;
        }
      },
      shakeThresholdGravity: 1.5,
    );

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    shakeDetector.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'iyw4seyd' /* Registro de la compañia */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofillHints: [AutofillHints.name],
                                  textCapitalization: TextCapitalization.words,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '2b7btjo4' /* Nombre de la compañia */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                                FutureBuilder<ApiCallResponse>(
                                  future: MekaGroup.tipoCompaniasCall.call(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: LinearProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      );
                                    }
                                    final typeCompanyDropDownTipoCompaniasResponse =
                                        snapshot.data!;
                                    return FlutterFlowDropDown<String>(
                                      controller: _model
                                              .typeCompanyDropDownValueController ??=
                                          FormFieldController<String>(
                                        _model.typeCompanyDropDownValue ??= '',
                                      ),
                                      options: List<String>.from(
                                          MekaGroup.tipoCompaniasCall.id(
                                        typeCompanyDropDownTipoCompaniasResponse
                                            .jsonBody,
                                      )!),
                                      optionLabels:
                                          MekaGroup.tipoCompaniasCall.name(
                                        typeCompanyDropDownTipoCompaniasResponse
                                            .jsonBody,
                                      )!,
                                      onChanged: (val) => setState(() => _model
                                          .typeCompanyDropDownValue = val),
                                      width: double.infinity,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 14.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'ol9h8oxb' /* Seleccione el tipo de compañia */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                                FutureBuilder<ApiCallResponse>(
                                  future:
                                      MekaGroup.todasLasCategoriasCall.call(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: LinearProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      );
                                    }
                                    final categoriesNewDropDownTodasLasCategoriasResponse =
                                        snapshot.data!;
                                    return FlutterFlowDropDown<String>(
                                      multiSelectController: _model
                                              .categoriesNewDropDownValueController ??=
                                          FormFieldController<List<String>>(
                                              null),
                                      options:
                                          MekaGroup.todasLasCategoriasCall.name(
                                        categoriesNewDropDownTodasLasCategoriasResponse
                                            .jsonBody,
                                      )!,
                                      width: double.infinity,
                                      height: 50.0,
                                      searchHintTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                      searchTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '40lcjozl' /* Seleccione la(s) especialidad(... */,
                                      ),
                                      searchHintText:
                                          FFLocalizations.of(context).getText(
                                        '6uo85d50' /* Busqueda de la categoria... */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: true,
                                      isMultiSelect: true,
                                      onMultiSelectChanged: (val) => setState(
                                          () => _model
                                                  .categoriesNewDropDownValue =
                                              val),
                                    );
                                  },
                                ),
                                FlutterFlowDropDown<String>(
                                  multiSelectController: _model
                                          .metodoPagoDropDownValueController ??=
                                      FormFieldController<List<String>>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'a0y8jx9y' /* Dinero */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'zdrz0vok' /* Tarjeta de Credito */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'iqxc6r69' /* Transferencia */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'prf9hucf' /* Criptomoneda */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'myhb6kgz' /* Paypal */,
                                    )
                                  ],
                                  width: double.infinity,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '8t82ifgz' /* Método de Pago */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: true,
                                  onMultiSelectChanged: (val) => setState(() =>
                                      _model.metodoPagoDropDownValue = val),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'CREATE_COMPANY_BUSCAR_TU_DIRECCIÓN_BTN_O');
                                    logFirebaseEvent('Button_bottom_sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      isDismissible: false,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                SelectMapAddressComponentWidget(
                                              id: '8',
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'new9e7yk' /* Buscar tu dirección */,
                                  ),
                                  icon: FaIcon(
                                    FontAwesomeIcons.solidAddressCard,
                                  ),
                                  options: FFButtonOptions(
                                    width: 270.0,
                                    height: 45.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                if (FFAppState().ltPosition != null)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFAppState().ltPositionAddress,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                      ),
                                      if (FFAppState().ltPosition != null)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            FFAppState().ltPosition!.toString(),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF393939),
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70.0,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: ((_model.name == null ||
                                    _model.name == '') &&
                                (_model.typeCompany == null ||
                                    _model.typeCompany == '') &&
                                !(_model.categories.isNotEmpty) &&
                                !(_model.payment.isNotEmpty) &&
                                (FFAppState().ltPosition == null) &&
                                (FFAppState().ltPositionAddress == null ||
                                    FFAppState().ltPositionAddress == ''))
                            ? null
                            : () async {
                                logFirebaseEvent(
                                    'CREATE_COMPANY_REGISTRAR_COMPAÑIA_BTN_ON');
                                logFirebaseEvent('Button_backend_call');
                                _model.apiResult32c =
                                    await MekaLTGroup.createCompanyCall.call(
                                  categoriesList: functions.getIdsCategories(
                                      getJsonField(
                                        (_model.apiResultCategories?.jsonBody ??
                                            ''),
                                        r'''$''',
                                        true,
                                      )!,
                                      _model.categoriesNewDropDownValue!
                                          .toList()),
                                  typeCompany: _model.typeCompanyDropDownValue,
                                  paymentList: _model.metodoPagoDropDownValue,
                                  user: currentUserUid,
                                  name: _model.textController.text,
                                  address: FFAppState().ltPositionAddress,
                                  lat:
                                      functions.getLng(FFAppState().ltPosition),
                                  lng:
                                      functions.getLng(FFAppState().ltPosition),
                                );
                                if ((_model.apiResult32c?.succeeded ?? true)) {
                                  logFirebaseEvent('Button_update_app_state');
                                  setState(() {
                                    FFAppState().ltCreateCompany = false;
                                  });
                                  logFirebaseEvent('Button_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Show!'),
                                        content: Text(
                                            'Tu empresa fue creada con éxito!'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('HomePage');
                                } else {
                                  logFirebaseEvent('Button_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Error'),
                                        content: Text(
                                            'Que pena! no conseguimos registrar tu empresa'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                setState(() {});
                              },
                        text: FFLocalizations.of(context).getText(
                          'gokn01in' /* Registrar Compañia */,
                        ),
                        options: FFButtonOptions(
                          width: 270.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          disabledColor: Color(0xFF797979),
                          disabledTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
