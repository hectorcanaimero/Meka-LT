import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'load_page_model.dart';
export 'load_page_model.dart';

class LoadPageWidget extends StatefulWidget {
  const LoadPageWidget({super.key});

  @override
  State<LoadPageWidget> createState() => _LoadPageWidgetState();
}

class _LoadPageWidgetState extends State<LoadPageWidget> {
  late LoadPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'LoadPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOAD_PAGE_PAGE_LoadPage_ON_INIT_STATE');
      logFirebaseEvent('LoadPage_backend_call');
      _model.resultGetCompany = await MekaLTGroup.getCompanyByUserCall.call(
        userId: currentUserUid,
      );
      if ((_model.resultGetCompany?.succeeded ?? true)) {
        if (MekaLTGroup.getCompanyByUserCall.active(
              (_model.resultGetCompany?.jsonBody ?? ''),
            ) ==
            true) {
          logFirebaseEvent('LoadPage_update_app_state');
          FFAppState().ltCompany = getJsonField(
            (_model.resultGetCompany?.jsonBody ?? ''),
            r'''$''',
          );
          logFirebaseEvent('LoadPage_navigate_to');

          context.pushNamedAuth(
            'HomePage',
            context.mounted,
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        } else {
          logFirebaseEvent('LoadPage_navigate_to');

          context.pushNamedAuth(
            'CreateCompanyPage',
            context.mounted,
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        }
      } else {
        logFirebaseEvent('LoadPage_alert_dialog');
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Error'),
              content:
                  Text('Estamos com problemas. Vamos a deslogar el usuario'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        logFirebaseEvent('LoadPage_auth');
        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();
      }
    });

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
