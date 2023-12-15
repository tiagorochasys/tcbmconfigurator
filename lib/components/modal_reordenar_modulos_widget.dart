import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_reordenar_modulos_model.dart';
export 'modal_reordenar_modulos_model.dart';

class ModalReordenarModulosWidget extends StatefulWidget {
  const ModalReordenarModulosWidget({
    Key? key,
    required this.listaItens,
    this.index,
    this.tipo,
    this.cod,
    required this.item,
  }) : super(key: key);

  final List<ItensStruct>? listaItens;
  final int? index;
  final String? tipo;
  final int? cod;
  final ItensStruct? item;

  @override
  _ModalReordenarModulosWidgetState createState() =>
      _ModalReordenarModulosWidgetState();
}

class _ModalReordenarModulosWidgetState
    extends State<ModalReordenarModulosWidget> {
  late ModalReordenarModulosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalReordenarModulosModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.indexState = widget.index;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      alignment: AlignmentDirectional(0.0, 0.0),
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Container(
                          height: 243.0,
                          constraints: BoxConstraints(
                            maxWidth: 79.0,
                            maxHeight: 243.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 50.0,
                                          buttonSize: 44.0,
                                          fillColor: Color(0xFFEFEFEF),
                                          icon: Icon(
                                            Icons.close_sharp,
                                            color: Color(0xFF2F373A),
                                            size: 16.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (_model.indexState != 0)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            _model.indexState =
                                                _model.indexState! + -1;
                                          });
                                          FFAppState().update(() {
                                            FFAppState().minhaSelecao =
                                                functions
                                                    .newCustomFunction2(
                                                        FFAppState()
                                                            .minhaSelecao
                                                            .toList(),
                                                        widget.item)!
                                                    .toList()
                                                    .cast<ItensStruct>();
                                          });
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.arrowLeft,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (_model.indexState! <
                                        functions.subtraiaDois(
                                            FFAppState().minhaSelecao.length)!)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            _model.indexState =
                                                _model.indexState! + 1;
                                          });
                                          FFAppState().update(() {
                                            FFAppState().minhaSelecao =
                                                functions
                                                    .nextOrdenacao(
                                                        _model.indexState,
                                                        FFAppState()
                                                            .minhaSelecao
                                                            .toList())!
                                                    .toList()
                                                    .cast<ItensStruct>();
                                          });
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.arrowRight,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Future.delayed(
                                            const Duration(milliseconds: 200));
                                        _model.updatePage(() {
                                          FFAppState().slots =
                                              FFAppState().slots +
                                                  () {
                                                    if (widget.tipo ==
                                                        'Módulo3') {
                                                      return -3;
                                                    } else if (widget.tipo ==
                                                        'Módulo2') {
                                                      return -2;
                                                    } else if (widget.tipo ==
                                                        'Módulo1') {
                                                      return -1;
                                                    } else {
                                                      return 0;
                                                    }
                                                  }();
                                        });
                                        FFAppState().update(() {
                                          FFAppState().removeFromMinhaSelecao(
                                              widget.item!);
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.trashAlt,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ].divide(SizedBox(height: 30.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
