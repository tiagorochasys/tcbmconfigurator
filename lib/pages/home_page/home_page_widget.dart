import '/backend/schema/structs/index.dart';
import '/components/modal_add_ambiente_widget.dart';
import '/components/modal_alert_widget.dart';
import '/components/modal_config_vazia_widget.dart';
import '/components/modal_cuidado_config_widget.dart';
import '/components/modal_enviar_p_d_f_widget.dart';
import '/components/modal_excluir_cabo_widget.dart';
import '/components/modal_excluir_interface_widget.dart';
import '/components/modal_help_widget.dart';
import '/components/modal_quantidade_cabo_widget.dart';
import '/components/modal_reordenar_modulos_widget.dart';
import '/components/modal_selecione_gabinete_widget.dart';
import '/components/modal_sem_interfaces_widget.dart';
import '/components/modall_preenchaslots_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    int? tp,
  })  : this.tp = tp ?? 0,
        super(key: key);

  final int tp;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.tp == 1) {
        setState(() {
          FFAppState().mostrapreco = true;
        });
      }
    });

    _model.expandable1Controller = ExpandableController(initialExpanded: false);
    _model.expandable2Controller = ExpandableController(initialExpanded: false);
    _model.expandable3Controller = ExpandableController(initialExpanded: false);
    _model.expandable4Controller = ExpandableController(initialExpanded: false);
    _model.expandable5Controller = ExpandableController(initialExpanded: false);
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
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: _model.columnController1,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    controller: _model.columnController2,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              100.0, 20.0, 100.0, 0.0),
                          child: SingleChildScrollView(
                            controller: _model.columnController3,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SingleChildScrollView(
                                  controller: _model.columnController4,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'TCB-M CONFIGURATOR',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color:
                                                              Color(0xFF4169E1),
                                                          fontSize: 31.5,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    'MODULAR TABLETOP CONNECTIVITY BOX',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/Logo_Absolute.png',
                                                    width: 198.0,
                                                    height: 58.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (FFAppState().hideComponent)
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  functions.convertJsonToString(
                                                      FFAppState()
                                                          .minhaSelecao
                                                          .map((e) => e.toMap())
                                                          .toList()),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                        ],
                                      ),
                                      Divider(
                                        height: 24.0,
                                        thickness: 1.0,
                                        color: Color(0xFFE0E4E4),
                                      ),
                                      Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 400.0,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 400.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    25.0,
                                                                    20.0,
                                                                    15.0,
                                                                    10.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            color: Color(
                                                                0x00000000),
                                                            child:
                                                                ExpandableNotifier(
                                                              controller: _model
                                                                  .expandable1Controller,
                                                              child:
                                                                  ExpandablePanel(
                                                                header: Text(
                                                                  'Gabinete',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                collapsed:
                                                                    Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Hello World',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          350.0,
                                                                      height:
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFE3E3E3),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                expanded:
                                                                    Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  '5 slots',
                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Colors.black,
                                                                                        fontSize: 18.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  'TCB-M5',
                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Color(0xFF4169E1),
                                                                                        fontSize: 18.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      if ((FFAppState().gabinete != 0) && (FFAppState().slots != 0)) {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          enableDrag: false,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return GestureDetector(
                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                              child: Padding(
                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                child: ModalCuidadoConfigWidget(
                                                                                                  gabinete: 5,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      } else {
                                                                                        if (FFAppState().gabinete == 5) {
                                                                                          setState(() {
                                                                                            FFAppState().gabinete = 0;
                                                                                          });
                                                                                          if (FFAppState().color == 'black') {
                                                                                            setState(() {
                                                                                              FFAppState().removeFromMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5black').toList().first);
                                                                                            });
                                                                                          } else {
                                                                                            setState(() {
                                                                                              FFAppState().removeFromMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5silver').toList().first);
                                                                                            });
                                                                                          }
                                                                                        } else {
                                                                                          setState(() {
                                                                                            FFAppState().gabinete = 5;
                                                                                            FFAppState().minhaSelecao = [];
                                                                                          });
                                                                                          if (FFAppState().color == 'black') {
                                                                                            setState(() {
                                                                                              FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5black').toList().first);
                                                                                            });
                                                                                          } else {
                                                                                            setState(() {
                                                                                              FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5silver').toList().first);
                                                                                            });
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    },
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: Image.asset(
                                                                                        'assets/images/2emqy_5.png',
                                                                                        width: 126.8,
                                                                                        height: 116.0,
                                                                                        fit: BoxFit.contain,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                if (FFAppState().gabinete == 5)
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                    child: Icon(
                                                                                      Icons.check_circle,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  '8 slots',
                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Colors.black,
                                                                                        fontSize: 18.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  'TCB-M8',
                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Color(0xFF4169E1),
                                                                                        fontSize: 18.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      if ((FFAppState().gabinete != 0) && (FFAppState().slots != 0)) {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          enableDrag: false,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return GestureDetector(
                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                              child: Padding(
                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                child: ModalCuidadoConfigWidget(
                                                                                                  gabinete: 8,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      } else {
                                                                                        if (FFAppState().gabinete == 8) {
                                                                                          setState(() {
                                                                                            FFAppState().gabinete = 0;
                                                                                          });
                                                                                          if (FFAppState().color == 'black') {
                                                                                            setState(() {
                                                                                              FFAppState().removeFromMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8black').toList().first);
                                                                                            });
                                                                                          } else {
                                                                                            setState(() {
                                                                                              FFAppState().removeFromMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8silver').toList().first);
                                                                                            });
                                                                                          }
                                                                                        } else {
                                                                                          setState(() {
                                                                                            FFAppState().gabinete = 8;
                                                                                            FFAppState().minhaSelecao = [];
                                                                                          });
                                                                                          if (FFAppState().color == 'black') {
                                                                                            setState(() {
                                                                                              FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8black').toList().first);
                                                                                            });
                                                                                          } else {
                                                                                            setState(() {
                                                                                              FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8silver').toList().first);
                                                                                            });
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    },
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: Image.asset(
                                                                                        'assets/images/k7eg7_8.png',
                                                                                        width: 153.0,
                                                                                        height: 116.0,
                                                                                        fit: BoxFit.contain,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                if (FFAppState().gabinete == 8)
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                    child: Icon(
                                                                                      Icons.check_circle,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ].divide(SizedBox(width: 20.0)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                theme:
                                                                    ExpandableThemeData(
                                                                  tapHeaderToExpand:
                                                                      true,
                                                                  tapBodyToExpand:
                                                                      false,
                                                                  tapBodyToCollapse:
                                                                      true,
                                                                  headerAlignment:
                                                                      ExpandablePanelHeaderAlignment
                                                                          .center,
                                                                  hasIcon: true,
                                                                  iconColor: Color(
                                                                      0xFFACACAC),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    25.0,
                                                                    10.0,
                                                                    15.0,
                                                                    10.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            color: Color(
                                                                0x00000000),
                                                            child:
                                                                ExpandableNotifier(
                                                              controller: _model
                                                                  .expandable2Controller,
                                                              child:
                                                                  ExpandablePanel(
                                                                header: Text(
                                                                  'Acabamento',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                collapsed:
                                                                    Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Hello World',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          350.0,
                                                                      height:
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFE3E3E3),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                expanded:
                                                                    Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                'Brushed Black',
                                                                                style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                      fontFamily: 'Open Sans',
                                                                                      color: Colors.black,
                                                                                      fontSize: 18.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    setState(() {
                                                                                      FFAppState().color = 'black';
                                                                                    });
                                                                                    if ((FFAppState().gabinete == 5) && (FFAppState().minhaSelecao.length == 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5black').toList().first);
                                                                                      });
                                                                                    } else if ((FFAppState().gabinete == 8) && (FFAppState().minhaSelecao.length == 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8black').toList().first);
                                                                                      });
                                                                                    } else if ((FFAppState().gabinete == 5) && (FFAppState().minhaSelecao.length > 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().updateMinhaSelecaoAtIndex(
                                                                                          0,
                                                                                          (_) => FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5black').toList().first,
                                                                                        );
                                                                                      });
                                                                                    } else if ((FFAppState().gabinete == 8) && (FFAppState().minhaSelecao.length > 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().updateMinhaSelecaoAtIndex(
                                                                                          0,
                                                                                          (_) => FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8black').toList().first,
                                                                                        );
                                                                                      });
                                                                                    }
                                                                                  },
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/brushedblack.jpg',
                                                                                      width: 160.0,
                                                                                      height: 62.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (FFAppState().color == 'black')
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.check_circle,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                'Mac Silver',
                                                                                style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                      fontFamily: 'Open Sans',
                                                                                      color: Colors.black,
                                                                                      fontSize: 18.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    setState(() {
                                                                                      FFAppState().color = 'silver';
                                                                                    });
                                                                                    if ((FFAppState().gabinete == 5) && (FFAppState().minhaSelecao.length == 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5silver').toList().first);
                                                                                      });
                                                                                    } else if ((FFAppState().gabinete == 8) && (FFAppState().minhaSelecao.length == 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().addToMinhaSelecao(FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8silver').toList().first);
                                                                                      });
                                                                                    } else if ((FFAppState().gabinete == 5) && (FFAppState().minhaSelecao.length > 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().updateMinhaSelecaoAtIndex(
                                                                                          0,
                                                                                          (_) => FFAppState().listaItens.where((e) => e.tipo == 'Gabinete5silver').toList().first,
                                                                                        );
                                                                                      });
                                                                                    } else if ((FFAppState().gabinete == 8) && (FFAppState().minhaSelecao.length > 0)) {
                                                                                      setState(() {
                                                                                        FFAppState().updateMinhaSelecaoAtIndex(
                                                                                          0,
                                                                                          (_) => FFAppState().listaItens.where((e) => e.tipo == 'Gabinete8silver').toList().first,
                                                                                        );
                                                                                      });
                                                                                    }
                                                                                  },
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/macsilver.jpg',
                                                                                      width: 160.0,
                                                                                      height: 62.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (FFAppState().color == 'silver')
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.check_circle,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ].divide(SizedBox(width: 20.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                theme:
                                                                    ExpandableThemeData(
                                                                  tapHeaderToExpand:
                                                                      true,
                                                                  tapBodyToExpand:
                                                                      false,
                                                                  tapBodyToCollapse:
                                                                      true,
                                                                  headerAlignment:
                                                                      ExpandablePanelHeaderAlignment
                                                                          .center,
                                                                  hasIcon: true,
                                                                  iconColor: Color(
                                                                      0xFFACACAC),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (FFAppState()
                                                          .hideComponent)
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      25.0,
                                                                      10.0,
                                                                      15.0,
                                                                      10.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              color: Color(
                                                                  0x00000000),
                                                              child:
                                                                  ExpandableNotifier(
                                                                controller: _model
                                                                    .expandable3Controller,
                                                                child:
                                                                    ExpandablePanel(
                                                                  header: Text(
                                                                    'Keypad Config',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .displaySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  collapsed:
                                                                      Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Hello World',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 0.0,
                                                                            ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            350.0,
                                                                        height:
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFE3E3E3),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  expanded:
                                                                      Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  'Sem keypad',
                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Colors.black,
                                                                                        fontSize: 18.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/kp_0.png',
                                                                                    width: 124.0,
                                                                                    height: 90.0,
                                                                                    fit: BoxFit.fitWidth,
                                                                                  ),
                                                                                ),
                                                                                if (FFAppState().keypad == 0)
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                    child: Icon(
                                                                                      Icons.check_circle,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  'Outras opções..',
                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Colors.black,
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/kp_1.png',
                                                                                    width: 101.0,
                                                                                    height: 90.0,
                                                                                    fit: BoxFit.fitWidth,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Em breve',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        fontSize: 14.0,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ].divide(SizedBox(width: 40.0)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  theme:
                                                                      ExpandableThemeData(
                                                                    tapHeaderToExpand:
                                                                        true,
                                                                    tapBodyToExpand:
                                                                        false,
                                                                    tapBodyToCollapse:
                                                                        true,
                                                                    headerAlignment:
                                                                        ExpandablePanelHeaderAlignment
                                                                            .center,
                                                                    hasIcon:
                                                                        true,
                                                                    iconColor:
                                                                        Color(
                                                                            0xFFACACAC),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      25.0,
                                                                      10.0,
                                                                      15.0,
                                                                      10.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.00,
                                                                      0.00),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                color: Color(
                                                                    0x00000000),
                                                                child:
                                                                    ExpandableNotifier(
                                                                  controller: _model
                                                                      .expandable4Controller,
                                                                  child:
                                                                      ExpandablePanel(
                                                                    header:
                                                                        Text(
                                                                      'Módulos',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .displaySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Open Sans',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    collapsed:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          'Hello World',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 0.0,
                                                                              ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              350.0,
                                                                          height:
                                                                              1.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFE3E3E3),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    expanded:
                                                                        Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.00,
                                                                          0.00),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                20.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    setState(() {
                                                                                      FFAppState().tabModulos = 3;
                                                                                    });
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 60.0,
                                                                                    height: 30.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.white,
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          color: FFAppState().tabModulos == 3 ? Color(0xFF4169E1) : Color(0x00000000),
                                                                                          offset: Offset(0.0, 3.0),
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                    alignment: AlignmentDirectional(0.00, 0.00),
                                                                                    child: Text(
                                                                                      '3 Slots',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Open Sans',
                                                                                            color: FFAppState().tabModulos == 3 ? Color(0xFF14181B) : Color(0xFF6C6C6C),
                                                                                            fontSize: 16.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    setState(() {
                                                                                      FFAppState().tabModulos = 2;
                                                                                    });
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 60.0,
                                                                                    height: 30.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.white,
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          color: FFAppState().tabModulos == 2 ? Color(0xFF4169E1) : Color(0x00000000),
                                                                                          offset: Offset(0.0, 3.0),
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                    alignment: AlignmentDirectional(0.00, 0.00),
                                                                                    child: Text(
                                                                                      '2 Slots',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Open Sans',
                                                                                            color: FFAppState().tabModulos == 2 ? Color(0xFF14181B) : Color(0xFF6C6C6C),
                                                                                            fontSize: 16.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    setState(() {
                                                                                      FFAppState().tabModulos = 1;
                                                                                    });
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 52.0,
                                                                                    height: 30.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.white,
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          color: FFAppState().tabModulos == 1 ? Color(0xFF4169E1) : Color(0x00000000),
                                                                                          offset: Offset(0.0, 3.0),
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                    alignment: AlignmentDirectional(0.00, 0.00),
                                                                                    child: Text(
                                                                                      '1 Slot',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Open Sans',
                                                                                            color: FFAppState().tabModulos == 1 ? Color(0xFF14181B) : Color(0xFF6C6C6C),
                                                                                            fontSize: 16.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 10.0)),
                                                                            ),
                                                                          ),
                                                                          if (FFAppState().tabModulos ==
                                                                              3)
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 10.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final listaModulos = FFAppState().listaItens.where((e) => e.tipo == 'Módulo3').toList();
                                                                                    return Container(
                                                                                      width: 380.0,
                                                                                      height: 194.0,
                                                                                      child: CarouselSlider.builder(
                                                                                        itemCount: listaModulos.length,
                                                                                        itemBuilder: (context, listaModulosIndex, _) {
                                                                                          final listaModulosItem = listaModulos[listaModulosIndex];
                                                                                          return Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.00, 0.00),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    if (functions.validaSlot(FFAppState().slots, 3, FFAppState().gabinete) > 0) {
                                                                                                      setState(() {
                                                                                                        FFAppState().slots = functions.somaModulos(FFAppState().slots, 3)!;
                                                                                                      });
                                                                                                      setState(() {
                                                                                                        FFAppState().addToMinhaSelecao(listaModulosItem);
                                                                                                      });
                                                                                                    } else {
                                                                                                      if (FFAppState().gabinete == 0) {
                                                                                                        await showModalBottomSheet(
                                                                                                          isScrollControlled: true,
                                                                                                          backgroundColor: Colors.transparent,
                                                                                                          enableDrag: false,
                                                                                                          context: context,
                                                                                                          builder: (context) {
                                                                                                            return GestureDetector(
                                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                              child: Padding(
                                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                                child: ModalSelecioneGabineteWidget(),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => safeSetState(() {}));
                                                                                                      } else {
                                                                                                        await showModalBottomSheet(
                                                                                                          isScrollControlled: true,
                                                                                                          backgroundColor: Colors.transparent,
                                                                                                          enableDrag: false,
                                                                                                          context: context,
                                                                                                          builder: (context) {
                                                                                                            return GestureDetector(
                                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                              child: Padding(
                                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                                child: ModalAlertWidget(),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => safeSetState(() {}));
                                                                                                      }
                                                                                                    }
                                                                                                  },
                                                                                                  child: ClipRRect(
                                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                                    child: Image.network(
                                                                                                      listaModulosItem.imagem,
                                                                                                      width: 135.0,
                                                                                                      height: 189.0,
                                                                                                      fit: BoxFit.none,
                                                                                                      alignment: Alignment(0.00, 0.00),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                        carouselController: _model.carousel1Controller ??= CarouselController(),
                                                                                        options: CarouselOptions(
                                                                                          initialPage: min(1, listaModulos.length - 1),
                                                                                          viewportFraction: 0.4,
                                                                                          disableCenter: true,
                                                                                          enlargeCenterPage: true,
                                                                                          enlargeFactor: 0.4,
                                                                                          enableInfiniteScroll: false,
                                                                                          scrollDirection: Axis.horizontal,
                                                                                          autoPlay: false,
                                                                                          onPageChanged: (index, _) => _model.carousel1CurrentIndex = index,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (FFAppState().tabModulos ==
                                                                              2)
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.00, 0.00),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 10.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final listaModulos = FFAppState().listaItens.where((e) => e.tipo == 'Módulo2').toList();
                                                                                    return Container(
                                                                                      width: 380.0,
                                                                                      height: 194.0,
                                                                                      child: CarouselSlider.builder(
                                                                                        itemCount: listaModulos.length,
                                                                                        itemBuilder: (context, listaModulosIndex, _) {
                                                                                          final listaModulosItem = listaModulos[listaModulosIndex];
                                                                                          return Align(
                                                                                            alignment: AlignmentDirectional(-1.00, 0.00),
                                                                                            child: InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (functions.validaSlot(FFAppState().slots, 2, FFAppState().gabinete) > 0) {
                                                                                                  setState(() {
                                                                                                    FFAppState().slots = functions.somaModulos(FFAppState().slots, 2)!;
                                                                                                  });
                                                                                                  setState(() {
                                                                                                    FFAppState().addToMinhaSelecao(listaModulosItem);
                                                                                                  });
                                                                                                } else {
                                                                                                  if (FFAppState().gabinete == 0) {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: ModalSelecioneGabineteWidget(),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  } else {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: ModalAlertWidget(),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  }
                                                                                                }
                                                                                              },
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                                child: Image.network(
                                                                                                  listaModulosItem.imagem,
                                                                                                  width: 92.0,
                                                                                                  height: 189.0,
                                                                                                  fit: BoxFit.none,
                                                                                                  alignment: Alignment(0.00, 0.00),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                        carouselController: _model.carousel2Controller ??= CarouselController(),
                                                                                        options: CarouselOptions(
                                                                                          initialPage: min(1, listaModulos.length - 1),
                                                                                          viewportFraction: 0.3,
                                                                                          disableCenter: true,
                                                                                          enlargeCenterPage: true,
                                                                                          enlargeFactor: 0.4,
                                                                                          enableInfiniteScroll: false,
                                                                                          scrollDirection: Axis.horizontal,
                                                                                          autoPlay: false,
                                                                                          onPageChanged: (index, _) => _model.carousel2CurrentIndex = index,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (FFAppState().tabModulos ==
                                                                              1)
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.00, 0.00),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 10.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final listaModulos = FFAppState().listaItens.where((e) => e.tipo == 'Módulo1').toList();
                                                                                    return Container(
                                                                                      width: 380.0,
                                                                                      height: 194.0,
                                                                                      child: CarouselSlider.builder(
                                                                                        itemCount: listaModulos.length,
                                                                                        itemBuilder: (context, listaModulosIndex, _) {
                                                                                          final listaModulosItem = listaModulos[listaModulosIndex];
                                                                                          return Align(
                                                                                            alignment: AlignmentDirectional(-1.00, 0.00),
                                                                                            child: InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (functions.validaSlot(FFAppState().slots, 1, FFAppState().gabinete) > 0) {
                                                                                                  setState(() {
                                                                                                    FFAppState().slots = functions.somaModulos(FFAppState().slots, 1)!;
                                                                                                  });
                                                                                                  setState(() {
                                                                                                    FFAppState().addToMinhaSelecao(listaModulosItem);
                                                                                                  });
                                                                                                } else {
                                                                                                  if (FFAppState().gabinete == 0) {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: ModalSelecioneGabineteWidget(),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  } else {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: ModalAlertWidget(),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  }
                                                                                                }
                                                                                              },
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                                child: Image.network(
                                                                                                  listaModulosItem.imagem,
                                                                                                  width: 47.0,
                                                                                                  height: 189.0,
                                                                                                  fit: BoxFit.none,
                                                                                                  alignment: Alignment(0.00, 0.00),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                        carouselController: _model.carousel3Controller ??= CarouselController(),
                                                                                        options: CarouselOptions(
                                                                                          initialPage: min(1, listaModulos.length - 1),
                                                                                          viewportFraction: 0.15,
                                                                                          disableCenter: true,
                                                                                          enlargeCenterPage: true,
                                                                                          enlargeFactor: 0.3,
                                                                                          enableInfiniteScroll: false,
                                                                                          scrollDirection: Axis.horizontal,
                                                                                          autoPlay: false,
                                                                                          onPageChanged: (index, _) => _model.carousel3CurrentIndex = index,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    theme:
                                                                        ExpandableThemeData(
                                                                      tapHeaderToExpand:
                                                                          true,
                                                                      tapBodyToExpand:
                                                                          false,
                                                                      tapBodyToCollapse:
                                                                          true,
                                                                      headerAlignment:
                                                                          ExpandablePanelHeaderAlignment
                                                                              .center,
                                                                      hasIcon:
                                                                          true,
                                                                      iconColor:
                                                                          Color(
                                                                              0xFFACACAC),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    25.0,
                                                                    10.0,
                                                                    15.0,
                                                                    10.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            color: Color(
                                                                0x00000000),
                                                            child:
                                                                ExpandableNotifier(
                                                              controller: _model
                                                                  .expandable5Controller,
                                                              child:
                                                                  ExpandablePanel(
                                                                header: Text(
                                                                  'Cabos FCC ™',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                collapsed: Text(
                                                                  'Hello World',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                expanded:
                                                                    Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            40.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final listaCabos =
                                                                                FFAppState().listaItens.where((e) => e.tipo == 'Cabo').toList();
                                                                            return Container(
                                                                              width: 400.0,
                                                                              height: 230.0,
                                                                              child: CarouselSlider.builder(
                                                                                itemCount: listaCabos.length,
                                                                                itemBuilder: (context, listaCabosIndex, _) {
                                                                                  final listaCabosItem = listaCabos[listaCabosIndex];
                                                                                  return Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(0.00, 0.00),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            if (listaCabosItem.cod == 5686) {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ModalQuantidadeCaboWidget(
                                                                                                        cabo: listaCabosItem,
                                                                                                        quantidade: 1,
                                                                                                        bateria: FFAppState().listaItens.where((e) => e.cod == 5688).toList().first,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            } else {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ModalQuantidadeCaboWidget(
                                                                                                        cabo: listaCabosItem,
                                                                                                        quantidade: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            }
                                                                                          },
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                            child: Image.network(
                                                                                              listaCabosItem.imagem,
                                                                                              width: 110.0,
                                                                                              height: 189.0,
                                                                                              fit: BoxFit.none,
                                                                                              alignment: Alignment(0.00, 0.00),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          listaCabosItem.descricao,
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                                fontFamily: 'Open Sans',
                                                                                                color: Colors.black,
                                                                                                fontSize: 14.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                                carouselController: _model.carouselController ??= CarouselController(),
                                                                                options: CarouselOptions(
                                                                                  initialPage: min(1, listaCabos.length - 1),
                                                                                  viewportFraction: 0.4,
                                                                                  disableCenter: false,
                                                                                  enlargeCenterPage: true,
                                                                                  enlargeFactor: 0.4,
                                                                                  enableInfiniteScroll: false,
                                                                                  scrollDirection: Axis.horizontal,
                                                                                  autoPlay: false,
                                                                                  onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                theme:
                                                                    ExpandableThemeData(
                                                                  tapHeaderToExpand:
                                                                      true,
                                                                  tapBodyToExpand:
                                                                      false,
                                                                  tapBodyToCollapse:
                                                                      true,
                                                                  headerAlignment:
                                                                      ExpandablePanelHeaderAlignment
                                                                          .center,
                                                                  hasIcon: true,
                                                                  iconColor: Color(
                                                                      0xFFACACAC),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 640.0,
                                                          height: 550.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.network(
                                                                () {
                                                                  if (FFAppState()
                                                                          .mesa
                                                                          .toString() ==
                                                                      '0') {
                                                                    return '-';
                                                                  } else if (FFAppState()
                                                                          .mesa ==
                                                                      1) {
                                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/yt7uffygsmzm/black_back.jpg';
                                                                  } else if (FFAppState()
                                                                          .mesa ==
                                                                      2) {
                                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/3wt009l6p7w8/mad_vertical_back.jpg';
                                                                  } else if (FFAppState()
                                                                          .mesa ==
                                                                      3) {
                                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/zoo7gb2wqch5/mad_list_back.jpg';
                                                                  } else if (FFAppState()
                                                                          .mesa ==
                                                                      4) {
                                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/n56wxfqjzbmd/mad_back.jpg';
                                                                  } else if (FFAppState()
                                                                          .mesa ==
                                                                      5) {
                                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/cnf1tp9m759u/mad_white_back.jpg';
                                                                  } else {
                                                                    return '-';
                                                                  }
                                                                }(),
                                                              ).image,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Container(
                                                            key: ValueKey(
                                                                'area'),
                                                            width: 640.0,
                                                            height: 550.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                fit:
                                                                    BoxFit.none,
                                                                image: Image
                                                                    .network(
                                                                  () {
                                                                    if (FFAppState()
                                                                            .gabinete
                                                                            .toString() ==
                                                                        '0') {
                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/m5bg1cnzayv9/default.png';
                                                                    } else if ((FFAppState().gabinete ==
                                                                            8) &&
                                                                        (FFAppState().color ==
                                                                            'black')) {
                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/tmond29gkjbo/black_skpad_8.png';
                                                                    } else if ((FFAppState().gabinete ==
                                                                            8) &&
                                                                        (FFAppState().color ==
                                                                            'silver')) {
                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/yd1gfdipng07/silver_skpad_8.png';
                                                                    } else if ((FFAppState().gabinete ==
                                                                            5) &&
                                                                        (FFAppState().color ==
                                                                            'black')) {
                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/lan8shqibkdn/black_skpad_5.png';
                                                                    } else if ((FFAppState().gabinete ==
                                                                            5) &&
                                                                        (FFAppState().color ==
                                                                            'silver')) {
                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/p8n51yovylsj/silver_skpad_5.png';
                                                                    } else {
                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/m5bg1cnzayv9/default.png';
                                                                    }
                                                                  }(),
                                                                ).image,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            1.00,
                                                                            -1.00),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              6.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: ModalHelpWidget(),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.help_outline,
                                                                              color: ((FFAppState().slots < FFAppState().gabinete) || (FFAppState().slots == 0) ? true : false) ? Colors.transparent : Color(0xFF171717),
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.00,
                                                                            0.00),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 240.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  height: 191.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final modulos = FFAppState().minhaSelecao.where((e) => (e.tipo != 'Gabinete8black') && (e.tipo != 'Gabinete8silver') && (e.tipo != 'Gabinete5black') && (e.tipo != 'Gabinete8silver')).toList();
                                                                                      return SingleChildScrollView(
                                                                                        scrollDirection: Axis.horizontal,
                                                                                        controller: _model.rowController1,
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: List.generate(modulos.length, (modulosIndex) {
                                                                                            final modulosItem = modulos[modulosIndex];
                                                                                            return Visibility(
                                                                                              visible: (modulosItem.tipo != 'Gabinete8black') && (modulosItem.tipo != 'Gabinete8silver') && (modulosItem.tipo != 'Gabinete5silver') && (modulosItem.tipo != 'Gabinete5black'),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.00, 0.00),
                                                                                                child: Builder(
                                                                                                  builder: (context) => InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await showAlignedDialog(
                                                                                                        context: context,
                                                                                                        isGlobal: true,
                                                                                                        avoidOverflow: false,
                                                                                                        targetAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                        followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                        builder: (dialogContext) {
                                                                                                          return Material(
                                                                                                            color: Colors.transparent,
                                                                                                            child: GestureDetector(
                                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                              child: ModalReordenarModulosWidget(
                                                                                                                listaItens: FFAppState().minhaSelecao,
                                                                                                                index: modulosIndex,
                                                                                                                tipo: modulosItem.tipo,
                                                                                                                item: modulosItem,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => setState(() {}));
                                                                                                    },
                                                                                                    child: ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                                      child: Image.network(
                                                                                                        modulosItem.imagem,
                                                                                                        height: 191.0,
                                                                                                        fit: BoxFit.contain,
                                                                                                        alignment: Alignment(0.00, 0.00),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnActionTrigger(
                                                                                                    animationsMap['imageOnActionTriggerAnimation']!,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation']!),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Opções\nde mesa:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .mesa = 0;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFFB8B8B8),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .do_disturb_alt_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .mesa = 1;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFFB8B8B8),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/black_back.jpg',
                                                                            width:
                                                                                30.0,
                                                                            height:
                                                                                30.0,
                                                                            fit:
                                                                                BoxFit.none,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .mesa = 2;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFFB8B8B8),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/mad_vertical_back.jpg',
                                                                            width:
                                                                                30.0,
                                                                            height:
                                                                                30.0,
                                                                            fit:
                                                                                BoxFit.none,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .mesa = 3;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFFB8B8B8),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/mad_list_back.jpg',
                                                                            width:
                                                                                30.0,
                                                                            height:
                                                                                30.0,
                                                                            fit:
                                                                                BoxFit.none,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .mesa = 4;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFFB8B8B8),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/mad_back.jpg',
                                                                            width:
                                                                                30.0,
                                                                            height:
                                                                                30.0,
                                                                            fit:
                                                                                BoxFit.none,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .mesa = 5;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFFB8B8B8),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/mad_white_back.jpg',
                                                                            width:
                                                                                30.0,
                                                                            height:
                                                                                30.0,
                                                                            fit:
                                                                                BoxFit.none,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 40.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    if (FFAppState()
                                                                            .gabinete ==
                                                                        0) {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalConfigVaziaWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    } else {
                                                                      if (FFAppState()
                                                                              .slots <
                                                                          FFAppState()
                                                                              .gabinete) {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModallPreenchaslotsWidget(),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      } else {
                                                                        if (FFAppState().editaInterface ==
                                                                            true) {
                                                                          setState(
                                                                              () {
                                                                            FFAppState().updateMinhasInterfacesAtIndex(
                                                                              _model.index!,
                                                                              (_) => MinhasInterfacesStruct(
                                                                                quantidade: _model.quantidade,
                                                                                valor: functions.somaValorinterface(FFAppState().minhaSelecao.toList()),
                                                                                itensSelecionados: (FFAppState().minhaSelecao.last.tipo == 'Gabinete8black') || (FFAppState().minhaSelecao.last.tipo == 'Gabinete8silver') || (FFAppState().minhaSelecao.last.tipo == 'Gabinete5black') || (FFAppState().minhaSelecao.last.tipo == 'Gabinete5silver') ? functions.reordenaLastToFirst(FFAppState().minhaSelecao.toList()) : FFAppState().minhaSelecao,
                                                                                gabinete: FFAppState().gabinete,
                                                                                color: FFAppState().color,
                                                                                slots: FFAppState().slots,
                                                                                imagem: '-',
                                                                                ambiente: FFAppState().meusAmbientesSelecionados,
                                                                              ),
                                                                            );
                                                                            FFAppState().minhaSelecao =
                                                                                [];
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            FFAppState().gabinete =
                                                                                0;
                                                                            FFAppState().color =
                                                                                'black';
                                                                            FFAppState().slots =
                                                                                0;
                                                                            FFAppState().editaInterface =
                                                                                false;
                                                                            FFAppState().tabModulos =
                                                                                3;
                                                                            FFAppState().meusAmbientesSelecionados =
                                                                                [];
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            _model.quantidade =
                                                                                0;
                                                                          });
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Salvo com sucesso!',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Open Sans',
                                                                                  color: Colors.white,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 1500),
                                                                              backgroundColor: Color(0xFF28A745),
                                                                            ),
                                                                          );
                                                                          setState(
                                                                              () {
                                                                            FFAppState().mesa =
                                                                                0;
                                                                          });
                                                                        } else {
                                                                          setState(
                                                                              () {
                                                                            FFAppState().addToMinhasInterfaces(MinhasInterfacesStruct(
                                                                              quantidade: 1,
                                                                              valor: functions.somaValorinterface(FFAppState().minhaSelecao.toList()),
                                                                              itensSelecionados: (FFAppState().minhaSelecao.last.tipo == 'Gabinete8black') || (FFAppState().minhaSelecao.last.tipo == 'Gabinete8silver') || (FFAppState().minhaSelecao.last.tipo == 'Gabinete5black') || (FFAppState().minhaSelecao.last.tipo == 'Gabinete5silver') ? functions.reordenaLastToFirst(FFAppState().minhaSelecao.toList()) : FFAppState().minhaSelecao,
                                                                              gabinete: FFAppState().gabinete,
                                                                              color: FFAppState().color,
                                                                              slots: FFAppState().slots,
                                                                              imagem: '-',
                                                                              ambiente: [
                                                                                'Informe o ambiente'
                                                                              ],
                                                                            ));
                                                                            FFAppState().minhaSelecao =
                                                                                [];
                                                                          });
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Salvo com sucesso!',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Open Sans',
                                                                                  color: Colors.white,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 1500),
                                                                              backgroundColor: Color(0xFF28A745),
                                                                            ),
                                                                          );
                                                                          setState(
                                                                              () {
                                                                            FFAppState().gabinete =
                                                                                0;
                                                                            FFAppState().color =
                                                                                'black';
                                                                            FFAppState().slots =
                                                                                0;
                                                                            FFAppState().tabModulos =
                                                                                3;
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            FFAppState().mesa =
                                                                                0;
                                                                          });
                                                                          await _model
                                                                              .rowInterfaces
                                                                              ?.animateTo(
                                                                            0,
                                                                            duration:
                                                                                Duration(milliseconds: 100),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        }
                                                                      }
                                                                    }
                                                                  },
                                                                  text:
                                                                      'Salvar',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        130.0,
                                                                    height:
                                                                        36.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: Color(
                                                                        0x00FFFFFF),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              Color(0xFF343A40),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFF343A40),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    hoverColor:
                                                                        Color(
                                                                            0xFF343A40),
                                                                    hoverBorderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFF343A40),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    hoverTextColor:
                                                                        Colors
                                                                            .white,
                                                                  ),
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .gabinete = 0;
                                                                      FFAppState()
                                                                          .qtdModulos = 0;
                                                                      FFAppState()
                                                                          .minhaSelecao = [];
                                                                      FFAppState()
                                                                              .color =
                                                                          'black';
                                                                      FFAppState()
                                                                          .tabModulos = 3;
                                                                      FFAppState()
                                                                          .slots = 0;
                                                                      FFAppState()
                                                                              .editaInterface =
                                                                          false;
                                                                      FFAppState()
                                                                          .mesa = 0;
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model.index =
                                                                          0;
                                                                      _model.quantidade =
                                                                          0;
                                                                    });
                                                                  },
                                                                  text:
                                                                      'Limpar',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        130.0,
                                                                    height:
                                                                        36.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: Color(
                                                                        0x00FFFFFF),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              Color(0xFF343A40),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFF343A40),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    hoverColor:
                                                                        Color(
                                                                            0xFF343A40),
                                                                    hoverBorderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFF343A40),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    hoverTextColor:
                                                                        Colors
                                                                            .white,
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 40.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 50.0, 0.0, 0.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          controller: _model.rowInterfaces,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Minhas interfaces',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          '(${valueOrDefault<String>(
                                                            FFAppState()
                                                                .minhasInterfaces
                                                                .length
                                                                .toString(),
                                                            '0',
                                                          )})',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 6.0)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final minhasInterfaces =
                                                              FFAppState()
                                                                  .minhasInterfaces
                                                                  .map((e) => e)
                                                                  .toList();
                                                          return SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            controller: _model
                                                                .rowController2,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: List.generate(
                                                                  minhasInterfaces
                                                                      .length,
                                                                  (minhasInterfacesIndex) {
                                                                final minhasInterfacesItem =
                                                                    minhasInterfaces[
                                                                        minhasInterfacesIndex];
                                                                return Container(
                                                                  width: 300.0,
                                                                  height: 410.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        300.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            10.0,
                                                                            16.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              1.00,
                                                                              -1.00),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: ModalExcluirInterfaceWidget(
                                                                                        index: minhasInterfacesIndex,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.close,
                                                                              color: Color(0xFF929BA7),
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.00,
                                                                              0.00),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                197.0,
                                                                            height:
                                                                                178.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.contain,
                                                                                alignment: AlignmentDirectional(0.00, 0.00),
                                                                                image: Image.network(
                                                                                  minhasInterfacesItem.itensSelecionados[0].imagem,
                                                                                ).image,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.00, 0.00),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 68.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      height: 80.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0x00FFFFFF),
                                                                                      ),
                                                                                      alignment: AlignmentDirectional(0.00, 0.00),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.00, 0.00),
                                                                                        child: Builder(
                                                                                          builder: (context) {
                                                                                            final itensMontados = minhasInterfacesItem.itensSelecionados.toList();
                                                                                            return Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: List.generate(itensMontados.length, (itensMontadosIndex) {
                                                                                                final itensMontadosItem = itensMontados[itensMontadosIndex];
                                                                                                return Visibility(
                                                                                                  visible: itensMontadosIndex != 0,
                                                                                                  child: Align(
                                                                                                    alignment: AlignmentDirectional(0.00, 0.00),
                                                                                                    child: ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                                      child: Image.network(
                                                                                                        itensMontadosItem.imagem,
                                                                                                        height: 77.0,
                                                                                                        fit: BoxFit.contain,
                                                                                                        alignment: Alignment(0.00, 0.00),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              }),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            setState(() {
                                                                              FFAppState().minhaSelecao = [];
                                                                            });
                                                                            setState(() {
                                                                              FFAppState().minhaSelecao = minhasInterfacesItem.itensSelecionados.toList().cast<ItensStruct>();
                                                                              FFAppState().gabinete = minhasInterfacesItem.gabinete;
                                                                              FFAppState().color = minhasInterfacesItem.color;
                                                                              FFAppState().slots = minhasInterfacesItem.slots;
                                                                              FFAppState().editaInterface = true;
                                                                              FFAppState().meusAmbientesSelecionados = minhasInterfacesItem.ambiente.toList().cast<String>();
                                                                            });
                                                                            setState(() {
                                                                              _model.index = minhasInterfacesIndex;
                                                                              _model.quantidade = minhasInterfacesItem.quantidade;
                                                                            });
                                                                            await _model.columnController1?.animateTo(
                                                                              _model.columnController1!.position.maxScrollExtent,
                                                                              duration: Duration(milliseconds: 100),
                                                                              curve: Curves.ease,
                                                                            );
                                                                          },
                                                                          text:
                                                                              'Editar',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                81.0,
                                                                            height:
                                                                                23.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Colors.white,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  color: Color(0xFF343A40),
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFE3E3E3),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                            hoverColor:
                                                                                Color(0xFF343A40),
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFF343A40),
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverTextColor:
                                                                                Colors.white,
                                                                          ),
                                                                        ),
                                                                        if (FFAppState()
                                                                            .mostrapreco)
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              formatNumber(
                                                                                functions.multiplicaValor(
                                                                                    minhasInterfacesItem.quantidade,
                                                                                    valueOrDefault<double>(
                                                                                      minhasInterfacesItem.valor,
                                                                                      0.0,
                                                                                    )),
                                                                                formatType: FormatType.custom,
                                                                                currency: 'R\$',
                                                                                format: '#####.##',
                                                                                locale: 'pt',
                                                                              ),
                                                                              '0',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              FlutterFlowIconButton(
                                                                                borderColor: Color(0xFFE3E3E3),
                                                                                borderRadius: 0.0,
                                                                                buttonSize: 30.0,
                                                                                fillColor: Colors.white,
                                                                                icon: Icon(
                                                                                  Icons.remove_sharp,
                                                                                  color: Color(0xFF929BA7),
                                                                                  size: 12.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  setState(() {
                                                                                    FFAppState().updateMinhasInterfacesAtIndex(
                                                                                      minhasInterfacesIndex,
                                                                                      (e) => e..quantidade = functions.removeQuantidade(minhasInterfacesItem.quantidade, 1),
                                                                                    );
                                                                                  });
                                                                                  if (minhasInterfacesItem.ambiente.length > 1) {
                                                                                    setState(() {
                                                                                      FFAppState().updateMinhasInterfacesAtIndex(
                                                                                        minhasInterfacesIndex,
                                                                                        (e) => e..ambiente = functions.removeLastitem(minhasInterfacesItem.ambiente.toList())!.toList(),
                                                                                      );
                                                                                    });
                                                                                  }
                                                                                },
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  '${minhasInterfacesItem.quantidade.toString()}',
                                                                                  '1',
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                              FlutterFlowIconButton(
                                                                                borderColor: Color(0xFFE3E3E3),
                                                                                borderRadius: 0.0,
                                                                                buttonSize: 30.0,
                                                                                fillColor: Colors.white,
                                                                                icon: Icon(
                                                                                  Icons.add,
                                                                                  color: Color(0xFF929BA7),
                                                                                  size: 12.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  setState(() {
                                                                                    FFAppState().updateMinhasInterfacesAtIndex(
                                                                                      minhasInterfacesIndex,
                                                                                      (e) => e
                                                                                        ..quantidade = functions.addQuantidade(1, minhasInterfacesItem.quantidade)
                                                                                        ..updateAmbiente(
                                                                                          (e) => e.add('Informe o ambiente'),
                                                                                        ),
                                                                                    );
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ].divide(SizedBox(width: 16.0)),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: ModalAddAmbienteWidget(
                                                                                        index: minhasInterfacesIndex,
                                                                                        interface: minhasInterfacesItem,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 217.0,
                                                                              height: 35.0,
                                                                              constraints: BoxConstraints(
                                                                                maxWidth: 217.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.00, 0.00),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: ModalAddAmbienteWidget(
                                                                                                    index: minhasInterfacesIndex,
                                                                                                    interface: minhasInterfacesItem,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        },
                                                                                        text: minhasInterfacesItem.ambiente.first,
                                                                                        options: FFButtonOptions(
                                                                                          height: 23.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: Color(0xFFAFAFAF),
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Open Sans',
                                                                                                color: Colors.white,
                                                                                                fontSize: 12.0,
                                                                                              ),
                                                                                          elevation: 0.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 0.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(80.0),
                                                                                        ),
                                                                                      ),
                                                                                      if (minhasInterfacesItem.ambiente.length > 1)
                                                                                        FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return GestureDetector(
                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: ModalAddAmbienteWidget(
                                                                                                      index: minhasInterfacesIndex,
                                                                                                      interface: minhasInterfacesItem,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          text: '+${functions.removeForTagambiente(minhasInterfacesItem.ambiente.length, 1).toString()}',
                                                                                          options: FFButtonOptions(
                                                                                            height: 23.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: Color(0xFFAFAFAF),
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Open Sans',
                                                                                                  color: Colors.white,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderSide: BorderSide(
                                                                                              color: Colors.transparent,
                                                                                              width: 0.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(80.0),
                                                                                          ),
                                                                                        ),
                                                                                    ].divide(SizedBox(width: 4.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 10.0)),
                                                                    ),
                                                                  ),
                                                                );
                                                              }).divide(SizedBox(
                                                                  width: 20.0)),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 50.0, 0.0, 0.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          controller: _model.rowCabos,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Meus cabos',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          '(${valueOrDefault<String>(
                                                            functions
                                                                .someQuantidadecabos(
                                                                    FFAppState()
                                                                        .meusCabos
                                                                        .toList())
                                                                .toString(),
                                                            '0',
                                                          )})',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 6.0)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  50.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final meuCabos =
                                                              FFAppState()
                                                                  .meusCabos
                                                                  .toList();
                                                          return SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            controller: _model
                                                                .rowController3,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: List.generate(
                                                                  meuCabos
                                                                      .length,
                                                                  (meuCabosIndex) {
                                                                final meuCabosItem =
                                                                    meuCabos[
                                                                        meuCabosIndex];
                                                                return Container(
                                                                  width: 241.0,
                                                                  height: 337.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            10.0,
                                                                            16.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              1.00,
                                                                              -1.00),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: ModalExcluirCaboWidget(
                                                                                        index: meuCabosIndex,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.close,
                                                                              color: Color(0xFF929BA7),
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.00,
                                                                              0.00),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                34.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                meuCabosItem.listaItens.imagem,
                                                                                width: 110.0,
                                                                                height: 147.0,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if (FFAppState()
                                                                            .mostrapreco)
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              formatNumber(
                                                                                functions.multiplicaValor(
                                                                                    meuCabosItem.quantidade,
                                                                                    valueOrDefault<double>(
                                                                                      meuCabosItem.valor,
                                                                                      0.0,
                                                                                    )),
                                                                                formatType: FormatType.custom,
                                                                                currency: 'R\$',
                                                                                format: '#####.##',
                                                                                locale: 'pt',
                                                                              ),
                                                                              '0',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              FlutterFlowIconButton(
                                                                                borderColor: Color(0xFFE3E3E3),
                                                                                borderRadius: 0.0,
                                                                                buttonSize: 30.0,
                                                                                fillColor: Colors.white,
                                                                                icon: Icon(
                                                                                  Icons.remove_sharp,
                                                                                  color: Color(0xFF929BA7),
                                                                                  size: 12.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  setState(() {
                                                                                    FFAppState().updateMeusCabosAtIndex(
                                                                                      meuCabosIndex,
                                                                                      (e) => e..quantidade = functions.removeQuantidade(meuCabosItem.quantidade, 1),
                                                                                    );
                                                                                  });
                                                                                },
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  '${meuCabosItem.quantidade.toString()}',
                                                                                  '1',
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                              FlutterFlowIconButton(
                                                                                borderColor: Color(0xFFE3E3E3),
                                                                                borderRadius: 0.0,
                                                                                buttonSize: 30.0,
                                                                                fillColor: Colors.white,
                                                                                icon: Icon(
                                                                                  Icons.add,
                                                                                  color: Color(0xFF929BA7),
                                                                                  size: 12.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  setState(() {
                                                                                    FFAppState().updateMeusCabosAtIndex(
                                                                                      meuCabosIndex,
                                                                                      (e) => e..quantidade = functions.addQuantidade(1, meuCabosItem.quantidade),
                                                                                    );
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ].divide(SizedBox(width: 16.0)),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 10.0)),
                                                                    ),
                                                                  ),
                                                                );
                                                              }).divide(SizedBox(
                                                                  width: 20.0)),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (FFAppState().mostrapreco)
              Align(
                alignment: AlignmentDirectional(1.00, 1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 10.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.00, 1.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 10.0),
                          child: Container(
                            width: 433.0,
                            height: 57.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF6F7FB),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Color(0x335B5B5B),
                                  offset: Offset(1.0, 3.0),
                                  spreadRadius: 4.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(150.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.00, 1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 4.0, 10.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Interface Atual',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Text(
                                                'R\$',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 6.0)),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                functions.somaValorinterface(
                                                    FFAppState()
                                                        .minhaSelecao
                                                        .toList()),
                                                formatType: FormatType.custom,
                                                format: '####.##',
                                                locale: 'pt',
                                              ),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Total',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                            Text(
                                              'R\$',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 6.0)),
                                        ),
                                        Text(
                                          functions
                                              .somaTotal2(
                                                  functions.somaTotalinterfaces(
                                                      FFAppState()
                                                          .minhasInterfaces
                                                          .toList()),
                                                  functions.somaTotalinterCabos(
                                                      FFAppState()
                                                          .meusCabos
                                                          .toList()))
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        if ((FFAppState()
                                                    .minhasInterfaces
                                                    .length >
                                                0) ||
                                            (FFAppState().meusCabos.length >
                                                0)) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: ModalEnviarPDFWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        } else {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      ModalSemInterfacesWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        }
                                      },
                                      text: 'Gerar PDF',
                                      options: FFButtonOptions(
                                        height: 37.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF28A745),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ],
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
            if (!FFAppState().mostrapreco)
              Align(
                alignment: AlignmentDirectional(1.00, 1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 10.0),
                  child: Stack(
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          if ((FFAppState().minhasInterfaces.length > 0) ||
                              (FFAppState().meusCabos.length > 0)) {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ModalEnviarPDFWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          } else {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ModalSemInterfacesWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          }
                        },
                        text: 'Gerar PDF',
                        options: FFButtonOptions(
                          height: 37.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF28A745),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Align(
              alignment: AlignmentDirectional(-1.00, -1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.00, -1.00),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().mostrapreco == false) {
                              setState(() {
                                FFAppState().mostrapreco = true;
                              });
                            } else {
                              setState(() {
                                FFAppState().mostrapreco = false;
                              });
                            }
                          },
                          text: 'Gerar PDF',
                          options: FFButtonOptions(
                            width: 20.0,
                            height: 20.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFF1F4F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
