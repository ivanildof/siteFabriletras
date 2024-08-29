import '/auth/firebase_auth/auth_util.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    required this.index,
    String? letras,
  }) : letras = letras ?? 'Tipos de Leitreiros';

  final int? index;
  final String letras;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: const BoxDecoration(
        color: Color(0xFF0426C5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('MENU_COMP_HOME_ON_TAP');
                      logFirebaseEvent('HOME_navigate_to');

                      context.pushNamed(
                        'home',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    text: 'HOME',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: widget.index == 1
                          ? const Color(0xFFF3C62F)
                          : const Color(0x00000000),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Color(0x004B39EF),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                      hoverColor: const Color(0xFFF3C62F),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(
                        _model.dropDownValue ??= widget.letras,
                      ),
                      options: const [
                        'LETRA COM LED',
                        'LETRA DE LATÃO',
                        'LETRA DE CHAPA GALVANIZADA',
                        'LETRA DE AÇO POLIDO',
                        'LETRA DE AÇO ESCOVADO'
                      ],
                      onChanged: (val) async {
                        setState(() => _model.dropDownValue = val);
                        logFirebaseEvent(
                            'MENU_DropDown_ro20af0g_ON_FORM_WIDGET_SE');
                        logFirebaseEvent('DropDown_navigate_to');

                        context.pushNamed(
                          'letreiro',
                          queryParameters: {
                            'letras': serializeParam(
                              _model.dropDownValue,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );

                        if (_model.dropDownValue == 'Letras de Aço Escovado') {
                          logFirebaseEvent('DropDown_navigate_to');

                          context.pushNamed(
                            'LetraAcoEscovado',
                            queryParameters: {
                              'letras': serializeParam(
                                _model.dropDownValue,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Letra de Aço Polido') {
                          logFirebaseEvent('DropDown_navigate_to');

                          context.pushNamed(
                            'LetraAcoPolido',
                            queryParameters: {
                              'letras': serializeParam(
                                _model.dropDownValue,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Letra Chapa Galvanizada') {
                          logFirebaseEvent('DropDown_navigate_to');

                          context.pushNamed(
                            'LetraChapaGalvanizada',
                            queryParameters: {
                              'letras': serializeParam(
                                _model.dropDownValue,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue == 'Letra Latão') {
                          logFirebaseEvent('DropDown_navigate_to');

                          context.pushNamed(
                            'LetraLatao',
                            queryParameters: {
                              'letras': serializeParam(
                                _model.dropDownValue,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue == 'Letra de Led') {
                          logFirebaseEvent('DropDown_navigate_to');

                          context.pushNamed(
                            'LetraLed',
                            queryParameters: {
                              'letras': serializeParam(
                                _model.dropDownValue,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      width: 250.0,
                      height: 56.0,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).info,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      hintText: 'TIPOS DE LETREIROS',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      fillColor: const Color(0xFF0426C5),
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 1.0,
                      borderRadius: 8.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('MENU_COMP_portifolio_ON_TAP');
                      logFirebaseEvent('portifolio_navigate_to');

                      context.goNamed(
                        'portifolio',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    text: 'PORTIFÓLIO',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: widget.index == 3
                          ? const Color(0xFFF3C62F)
                          : const Color(0x00000000),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Color(0x004B39EF),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                      hoverColor: const Color(0xFFF3C62F),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('MENU_COMP_orcamento_ON_TAP');
                      logFirebaseEvent('orcamento_navigate_to');

                      context.goNamed(
                        'orcamentos',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    text: 'ORÇAMENTO',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: widget.index == 4
                          ? const Color(0xFFF3C62F)
                          : const Color(0x00000000),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Color(0x004B39EF),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                      hoverColor: const Color(0xFFF3C62F),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('MENU_COMP_orcamento_ON_TAP');
                      logFirebaseEvent('orcamento_navigate_to');

                      context.goNamed(
                        'videos',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    text: 'VÍDEOS',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: widget.index == 5
                          ? const Color(0xFFF3C62F)
                          : const Color(0x00000000),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Color(0x004B39EF),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                      hoverColor: const Color(0xFFF3C62F),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('MENU_COMP_dashboar_ON_TAP');
                      if (currentUserEmail == '') {
                        logFirebaseEvent('dashboar_bottom_sheet');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return WebViewAware(
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const LoginWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      } else {
                        logFirebaseEvent('dashboar_navigate_to');

                        context.pushNamed('dashboard');
                      }
                    },
                    text: 'DASHBOARD',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x004B39EF),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Color(0x004B39EF),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                      hoverColor: const Color(0xFFF3C62F),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('MENU_COMP_lightDark_small_ON_TAP');
                        if ((Theme.of(context).brightness ==
                                Brightness.light) ==
                            true) {
                          logFirebaseEvent(
                              'lightDark_small_set_dark_mode_settings');
                          setDarkModeSetting(context, ThemeMode.dark);
                          logFirebaseEvent('lightDark_small_widget_animation');
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['containerOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                        } else {
                          logFirebaseEvent(
                              'lightDark_small_set_dark_mode_settings');
                          setDarkModeSetting(context, ThemeMode.light);
                          logFirebaseEvent('lightDark_small_widget_animation');
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['containerOnActionTriggerAnimation']!
                                .controller
                                .reverse();
                          }
                        }
                      },
                      child: Container(
                        width: 80.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: const Color(0xFFE0E3E7),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Stack(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            children: [
                              const Align(
                                alignment: AlignmentDirectional(-0.9, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.wb_sunny_rounded,
                                    color: Color(0xFF57636C),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 6.0, 0.0),
                                  child: Icon(
                                    Icons.mode_night_rounded,
                                    color: Color(0xFF57636C),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Container(
                                  width: 36.0,
                                  height: 36.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x430B0D0F),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation']!,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 10.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
