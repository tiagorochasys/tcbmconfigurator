import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_cuidado_config_model.dart';
export 'modal_cuidado_config_model.dart';

class ModalCuidadoConfigWidget extends StatefulWidget {
  const ModalCuidadoConfigWidget({
    Key? key,
    int? gabinete,
  })  : this.gabinete = gabinete ?? 0,
        super(key: key);

  final int gabinete;

  @override
  _ModalCuidadoConfigWidgetState createState() =>
      _ModalCuidadoConfigWidgetState();
}

class _ModalCuidadoConfigWidgetState extends State<ModalCuidadoConfigWidget> {
  late ModalCuidadoConfigModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCuidadoConfigModel());

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
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
        child: Container(
          width: double.infinity,
          height: 225.0,
          constraints: BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(0.0),
            border: Border.all(
              color: Color(0xFFE0E3E7),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: Text(
                          'Atenção',
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
                Text(
                  'Ao trocar o gabinete, você perderá a configuração em andamento.',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            FFAppState().gabinete = widget.gabinete;
                            FFAppState().color = 'black';
                            FFAppState().slots = 0;
                            FFAppState().minhaSelecao = [];
                          });
                          setState(() {
                            FFAppState().addToMinhaSelecao(FFAppState()
                                .listaItens
                                .where((e) =>
                                    e.tipo ==
                                    'Gabinete${widget.gabinete.toString()}black')
                                .toList()
                                .first);
                          });
                          Navigator.pop(context);
                        },
                        text: 'Confirmar',
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
                                    fontFamily: 'Readex Pro',
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
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Fechar',
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
                                    fontFamily: 'Readex Pro',
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
                    ].divide(SizedBox(width: 20.0)),
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
