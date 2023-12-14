import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_quantidade_cabo_model.dart';
export 'modal_quantidade_cabo_model.dart';

class ModalQuantidadeCaboWidget extends StatefulWidget {
  const ModalQuantidadeCaboWidget({
    Key? key,
    required this.cabo,
    int? quantidade,
    this.bateria,
  })  : this.quantidade = quantidade ?? 0,
        super(key: key);

  final ItensStruct? cabo;
  final int quantidade;
  final ItensStruct? bateria;

  @override
  _ModalQuantidadeCaboWidgetState createState() =>
      _ModalQuantidadeCaboWidgetState();
}

class _ModalQuantidadeCaboWidgetState extends State<ModalQuantidadeCaboWidget> {
  late ModalQuantidadeCaboModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalQuantidadeCaboModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.quantidadeCabo = widget.quantidade;
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

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 560.0,
            maxHeight: 560.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(0.0),
            border: Border.all(
              color: Color(0xFFE0E3E7),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: Text(
                          'Escolha a quantidade',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Open Sans',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      buttonSize: 44.0,
                      icon: Icon(
                        Icons.close_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Divider(
                  height: 24.0,
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                if (widget.bateria != null)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.00, -1.00),
                            child: Text(
                              valueOrDefault<String>(
                                widget.cabo?.descricao,
                                '-',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.cabo?.descAlternativa,
                              '-',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.bateria != null)
                            Align(
                              alignment: AlignmentDirectional(-1.00, -1.00),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.cabo?.descricao,
                                  '-',
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          if (widget.bateria != null)
                            Text(
                              valueOrDefault<String>(
                                widget.cabo?.descAlternativa,
                                '-',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                        ],
                      ),
                    ],
                  ),
                if (widget.bateria == null)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.00, -1.00),
                            child: Text(
                              valueOrDefault<String>(
                                widget.cabo?.descricao,
                                '-',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.cabo?.descAlternativa,
                              '-',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      widget.cabo!.imagem,
                                      width: 110.0,
                                      height: 189.0,
                                      fit: BoxFit.contain,
                                      alignment: Alignment(0.00, 0.00),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Color(0xFFE3E3E3),
                                        borderRadius: 0.0,
                                        buttonSize: 40.0,
                                        fillColor: Colors.white,
                                        icon: Icon(
                                          Icons.remove_sharp,
                                          color: Color(0xFF929BA7),
                                          size: 16.0,
                                        ),
                                        onPressed: () async {
                                          setState(() {
                                            _model.quantidadeCabo =
                                                functions.removeQuantidade(
                                                    _model.quantidadeCabo, 1);
                                          });
                                        },
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          _model.quantidadeCabo?.toString(),
                                          '1',
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 18.0,
                                            ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Color(0xFFE3E3E3),
                                        borderRadius: 0.0,
                                        buttonSize: 40.0,
                                        fillColor: Colors.white,
                                        icon: Icon(
                                          Icons.add,
                                          color: Color(0xFF929BA7),
                                          size: 16.0,
                                        ),
                                        onPressed: () async {
                                          setState(() {
                                            _model.quantidadeCabo =
                                                functions.addQuantidade(
                                                    1, _model.quantidadeCabo);
                                          });
                                        },
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                                if (FFAppState().mostrapreco)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      formatNumber(
                                        functions.multiplicaValor(
                                            _model.quantidadeCabo,
                                            widget.cabo?.preco),
                                        formatType: FormatType.custom,
                                        currency: 'R\$ ',
                                        format: '',
                                        locale: '',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                        if (widget.bateria != null)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      widget.bateria!.imagem,
                                      width: 110.0,
                                      height: 189.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  if (_model.quantidadeBateria! > 0)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Color(0xFFE3E3E3),
                                            borderRadius: 0.0,
                                            buttonSize: 40.0,
                                            fillColor: Colors.white,
                                            icon: Icon(
                                              Icons.remove_sharp,
                                              color: Color(0xFF929BA7),
                                              size: 16.0,
                                            ),
                                            onPressed: () async {
                                              setState(() {
                                                _model.quantidadeBateria =
                                                    _model.quantidadeBateria! +
                                                        -1;
                                              });
                                            },
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              _model.quantidadeBateria
                                                  ?.toString(),
                                              '1',
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 18.0,
                                                ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Color(0xFFE3E3E3),
                                            borderRadius: 0.0,
                                            buttonSize: 40.0,
                                            fillColor: Colors.white,
                                            icon: Icon(
                                              Icons.add,
                                              color: Color(0xFF929BA7),
                                              size: 16.0,
                                            ),
                                            onPressed: () async {
                                              setState(() {
                                                _model.quantidadeBateria =
                                                    _model.quantidadeBateria! +
                                                        1;
                                              });
                                            },
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                  if (FFAppState().mostrapreco)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          functions.multiplicaValor(
                                              _model.quantidadeBateria,
                                              widget.bateria?.preco),
                                          formatType: FormatType.custom,
                                          currency: 'R\$ ',
                                          format: '',
                                          locale: '',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  if (_model.quantidadeBateria == 0)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 2.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(() {
                                            _model.quantidadeBateria =
                                                _model.quantidadeBateria! + 1;
                                          });
                                        },
                                        text: 'Incluir',
                                        options: FFButtonOptions(
                                          width: 99.0,
                                          height: 36.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.white,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF28A745),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: Color(0xFF28A745),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          hoverColor: Color(0xFF28A745),
                                          hoverBorderSide: BorderSide(
                                            color: Color(0xFF28A745),
                                            width: 1.0,
                                          ),
                                          hoverTextColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                      ].divide(SizedBox(width: 30.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          if ((widget.bateria != null) &&
                              (_model.quantidadeBateria! > 0)) {
                            setState(() {
                              FFAppState().addToMeusCabos(MeusCabosStruct(
                                quantidade: _model.quantidadeCabo,
                                valor: widget.cabo?.preco,
                                listaItens: widget.cabo,
                                imagem: widget.cabo?.imagem,
                              ));
                            });
                            setState(() {
                              FFAppState().addToMeusCabos(MeusCabosStruct(
                                quantidade: _model.quantidadeBateria,
                                valor: widget.bateria?.preco,
                                listaItens: widget.bateria,
                                imagem: widget.cabo?.imagem,
                              ));
                            });
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Adicionado com sucesso!',
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
                          } else {
                            setState(() {
                              FFAppState().addToMeusCabos(MeusCabosStruct(
                                quantidade: _model.quantidadeCabo,
                                valor: widget.cabo?.preco,
                                listaItens: widget.cabo,
                                imagem: widget.cabo?.imagem,
                              ));
                            });
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Adicionado com sucesso!',
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
                          }
                        },
                        text: 'Salvar',
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 36.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF343A40),
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Color(0xFF343A40),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                          hoverColor: Color(0xFF343A40),
                          hoverBorderSide: BorderSide(
                            color: Color(0xFF343A40),
                            width: 1.0,
                          ),
                          hoverTextColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
