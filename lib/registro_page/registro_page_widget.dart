import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/desactive_component_widget.dart';
import '/components/nav_bar_floting_widget.dart';
import '/components/vazio_widget_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registro_page_model.dart';
export 'registro_page_model.dart';

class RegistroPageWidget extends StatefulWidget {
  const RegistroPageWidget({super.key});

  @override
  State<RegistroPageWidget> createState() => _RegistroPageWidgetState();
}

class _RegistroPageWidgetState extends State<RegistroPageWidget>
    with TickerProviderStateMixin {
  late RegistroPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RegistroPage'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (FFAppState().ltActive)
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: wrapWithModel(
                      model: _model.desactiveComponentModel,
                      updateCallback: () => setState(() {}),
                      child: DesactiveComponentWidget(),
                    ),
                  ),
                ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                        unselectedLabelStyle: TextStyle(),
                        labelColor: FlutterFlowTheme.of(context).tertiary,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        backgroundColor: Color(0xB91F1F1F),
                        unselectedBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        borderColor: FlutterFlowTheme.of(context).lineColor,
                        unselectedBorderColor:
                            FlutterFlowTheme.of(context).secondary,
                        borderWidth: 0.0,
                        borderRadius: 18.0,
                        elevation: 3.0,
                        buttonMargin:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              '1x0wu7jy' /* Rechazados */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'qe8wfei4' /* Finalizados */,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          KeepAliveWidgetWrapper(
                            builder: (context) =>
                                FutureBuilder<ApiCallResponse>(
                              future:
                                  MekaServicesGroup.servicesByStatusCall.call(
                                status: 'cancelled',
                                userId: currentUserUid,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 24.0,
                                      height: 24.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final listViewServicesByStatusResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final item = getJsonField(
                                      listViewServicesByStatusResponse.jsonBody,
                                      r'''$''',
                                    ).toList();
                                    if (item.isEmpty) {
                                      return Center(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          height: 300.0,
                                          child: VazioWidgetWidget(
                                            name: 'Sin servicios Cancelados',
                                          ),
                                        ),
                                      );
                                    }
                                    return ListView.separated(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 24.0),
                                      scrollDirection: Axis.vertical,
                                      itemCount: item.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 24.0),
                                      itemBuilder: (context, itemIndex) {
                                        final itemItem = item[itemIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 3.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                              'dd/MM/yy h:mm a',
                                                              functions.createdAt(
                                                                  getJsonField(
                                                                itemItem,
                                                                r'''$.createdAt''',
                                                              ).toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                getJsonField(
                                                                  itemItem,
                                                                  r'''$._id''',
                                                                )
                                                                    .toString()
                                                                    .maybeHandleOverflow(
                                                                        maxChars:
                                                                            7),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'n8c1rq31' /* ... */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            getJsonField(
                                                              itemItem,
                                                              r'''$.category.name''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Text(
                                                            '${getJsonField(
                                                              itemItem,
                                                              r'''$.brand.name''',
                                                            ).toString()}-${getJsonField(
                                                              itemItem,
                                                              r'''$.model.name''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 3.0)),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 60.0,
                                                      height: 60.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        getJsonField(
                                                          itemItem,
                                                          r'''$.category.picture''',
                                                        ).toString(),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          KeepAliveWidgetWrapper(
                            builder: (context) =>
                                FutureBuilder<ApiCallResponse>(
                              future:
                                  MekaServicesGroup.servicesByStatusCall.call(
                                status: 'closed',
                                userId: currentUserUid,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 24.0,
                                      height: 24.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final listViewServicesByStatusResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final item = getJsonField(
                                      listViewServicesByStatusResponse.jsonBody,
                                      r'''$''',
                                    ).toList();
                                    if (item.isEmpty) {
                                      return Center(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          height: 300.0,
                                          child: VazioWidgetWidget(
                                            name: 'Sin servicios',
                                          ),
                                        ),
                                      );
                                    }
                                    return ListView.separated(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 24.0),
                                      scrollDirection: Axis.vertical,
                                      itemCount: item.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 24.0),
                                      itemBuilder: (context, itemIndex) {
                                        final itemItem = item[itemIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 3.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                              'dd/MM/yy h:mm a',
                                                              functions.createdAt(
                                                                  getJsonField(
                                                                itemItem,
                                                                r'''$.createdAt''',
                                                              ).toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                getJsonField(
                                                                  itemItem,
                                                                  r'''$._id''',
                                                                )
                                                                    .toString()
                                                                    .maybeHandleOverflow(
                                                                        maxChars:
                                                                            7),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'e0vcut0e' /* ... */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            getJsonField(
                                                              itemItem,
                                                              r'''$.category.name''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Text(
                                                            '${getJsonField(
                                                              itemItem,
                                                              r'''$.brand.name''',
                                                            ).toString()}-${getJsonField(
                                                              itemItem,
                                                              r'''$.model.name''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 3.0)),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 60.0,
                                                      height: 60.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        getJsonField(
                                                          itemItem,
                                                          r'''$.category.picture''',
                                                        ).toString(),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.navBarFlotingModel,
                updateCallback: () => setState(() {}),
                child: NavBarFlotingWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
