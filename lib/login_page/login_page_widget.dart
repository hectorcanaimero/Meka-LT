import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'LoginPage'});
    _model.emailLoginController ??= TextEditingController();
    _model.emailLoginFocusNode ??= FocusNode();

    _model.passwordLoginController ??= TextEditingController();
    _model.passwordLoginFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/ico.png',
                              width: 84.0,
                              height: 84.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'xz6agwmn' /* Meka  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'jcc964rz' /* LT */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 530.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '8t42qsqg' /* Bienvenido de nuevo */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 24.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'rkqwjeuv' /* Complete la información a cont... */,
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFC3B8B8),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.emailLoginController,
                                      focusNode: _model.emailLoginFocusNode,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'xpjzaoq5' /* E-mail */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        contentPadding: EdgeInsets.all(14.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .emailLoginControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.passwordLoginController,
                                      focusNode: _model.passwordLoginFocusNode,
                                      autofillHints: [AutofillHints.password],
                                      obscureText:
                                          !_model.passwordLoginVisibility,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '8savg7ok' /* Contraseña */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        contentPadding: EdgeInsets.all(14.0),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model
                                                    .passwordLoginVisibility =
                                                !_model.passwordLoginVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordLoginVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                      validator: _model
                                          .passwordLoginControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'LOGIN_INICIAR_SESIÓN_BTN_ON_TAP');
                                        logFirebaseEvent('Button_backend_call');
                                        _model.apiResult9uk =
                                            await MekaGroup.authLoginCall.call(
                                          username:
                                              _model.emailLoginController.text,
                                          password: _model
                                              .passwordLoginController.text,
                                        );
                                        if ((_model.apiResult9uk?.succeeded ??
                                            true)) {
                                          logFirebaseEvent('Button_auth');
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          await authManager.signIn(
                                            authenticationToken:
                                                MekaGroup.authLoginCall
                                                    .token(
                                                      (_model.apiResult9uk
                                                              ?.jsonBody ??
                                                          ''),
                                                    )
                                                    .toString(),
                                            refreshToken:
                                                MekaGroup.authLoginCall
                                                    .refreshToken(
                                                      (_model.apiResult9uk
                                                              ?.jsonBody ??
                                                          ''),
                                                    )
                                                    .toString(),
                                            authUid: MekaGroup.authLoginCall
                                                .id(
                                                  (_model.apiResult9uk
                                                          ?.jsonBody ??
                                                      ''),
                                                )
                                                .toString(),
                                            userData: UsersStruct(
                                              firstName: MekaGroup.authLoginCall
                                                  .firstName(
                                                    (_model.apiResult9uk
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              lastName: MekaGroup.authLoginCall
                                                  .lastName(
                                                    (_model.apiResult9uk
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              email: MekaGroup.authLoginCall
                                                  .email(
                                                    (_model.apiResult9uk
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              countryName:
                                                  MekaGroup.authLoginCall
                                                      .countryName(
                                                        (_model.apiResult9uk
                                                                ?.jsonBody ??
                                                            ''),
                                                      )
                                                      .toString(),
                                              countryId: MekaGroup.authLoginCall
                                                  .countryId(
                                                    (_model.apiResult9uk
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              typeUser: MekaGroup.authLoginCall
                                                  .typeUser(
                                                    (_model.apiResult9uk
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              id: MekaGroup.authLoginCall
                                                  .id(
                                                    (_model.apiResult9uk
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              score:
                                                  MekaGroup.authLoginCall.score(
                                                (_model.apiResult9uk
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              scoreName: MekaGroup.authLoginCall
                                                  .scoreName(
                                                    (_model.apiResult9uk
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                            ),
                                          );
                                          logFirebaseEvent(
                                              'Button_backend_call');
                                          _model.getCompany = await MekaLTGroup
                                              .getCompanyByUserCall
                                              .call(
                                            userId: currentUserUid,
                                          );
                                          if ((_model.getCompany?.succeeded ??
                                              true)) {
                                            logFirebaseEvent(
                                                'Button_update_app_state');
                                            setState(() {
                                              FFAppState().ltCreateCompany =
                                                  true;
                                              FFAppState().ltCompany =
                                                  getJsonField(
                                                (_model.getCompany?.jsonBody ??
                                                    ''),
                                                r'''$''',
                                              );
                                            });
                                            logFirebaseEvent(
                                                'Button_navigate_to');

                                            context.pushNamedAuth(
                                                'HomePage', context.mounted);
                                          } else {
                                            logFirebaseEvent(
                                                'Button_navigate_to');

                                            context.pushNamedAuth(
                                              'CreateCompanyPage',
                                              context.mounted,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          }
                                        } else {
                                          logFirebaseEvent(
                                              'Button_alert_dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                content: Text(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                  esText:
                                                      'Usuario y/o Contraseña Invalida',
                                                  enText:
                                                      'User and Password Invalid!',
                                                  ptText:
                                                      'Usuario ou Senha Invalida',
                                                )),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
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
                                        'j9q5hbaz' /* Iniciar sesión */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 270.0,
                                        height: 52.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'LOGIN_REGISTRESE_AQUI_BTN_ON_TAP');
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed('CreateUserPage');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '9hcnw5ef' /* Registrese aqui */,
                                      ),
                                      options: FFButtonOptions(
                                        height: 44.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            32.0, 0.0, 32.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('LOGIN_Container_8ne1xi4h_ON_TAP');
                  logFirebaseEvent('Container_navigate_to');

                  context.pushNamed('ForgotPasswordPage');
                },
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'LOGIN_¿_HAS_OLVIDADO_TU_CONTRASEÑA?_BTN_');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('ForgotPasswordPage');
                        },
                        text: FFLocalizations.of(context).getText(
                          '9wlny8wh' /* ¿Has olvidado tu contraseña? */,
                        ),
                        options: FFButtonOptions(
                          height: 44.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                          hoverColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
