import '/backend/schema/structs/index.dart';
import '/components/input_ambiente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_add_ambiente_model.dart';
export 'modal_add_ambiente_model.dart';

class ModalAddAmbienteWidget extends StatefulWidget {
  const ModalAddAmbienteWidget({
    Key? key,
    required this.index,
    required this.interface,
  }) : super(key: key);

  final int? index;
  final MinhasInterfacesStruct? interface;

  @override
  _ModalAddAmbienteWidgetState createState() => _ModalAddAmbienteWidgetState();
}

class _ModalAddAmbienteWidgetState extends State<ModalAddAmbienteWidget> {
  late ModalAddAmbienteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalAddAmbienteModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
        child: Container(
          width: double.infinity,
          height: 426.0,
          constraints: BoxConstraints(
            maxWidth: 520.0,
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
                          'Nomear interface',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Open Sans',
                                fontSize: 22.0,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Container(
                            width: 433.0,
                            height: 166.0,
                            constraints: BoxConstraints(
                              maxHeight: 260.0,
                            ),
                            decoration: BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final meusAmbientes =
                                    widget.interface?.ambiente?.toList() ?? [];
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(meusAmbientes.length,
                                            (meusAmbientesIndex) {
                                      final meusAmbientesItem =
                                          meusAmbientes[meusAmbientesIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.inputAmbienteModels
                                              .getModel(
                                            meusAmbientesIndex.toString(),
                                            meusAmbientesIndex,
                                          ),
                                          updateCallback: () => setState(() {}),
                                          child: InputAmbienteWidget(
                                            key: Key(
                                              'Keykal_${meusAmbientesIndex.toString()}',
                                            ),
                                            nomeAmbiente: meusAmbientesItem,
                                          ),
                                        ),
                                      );
                                    }).divide(SizedBox(height: 14.0)),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() {
                                  FFAppState().updateMinhasInterfacesAtIndex(
                                    widget.index!,
                                    (e) => e
                                      ..ambiente = _model.inputAmbienteModels
                                          .getValues(
                                            (m) => m.ambienteController.text,
                                          )
                                          .toList(),
                                  );
                                });
                                Navigator.pop(context);
                              },
                              text: 'Salvar',
                              options: FFButtonOptions(
                                width: 433.0,
                                height: 49.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
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
                          ),
                        ],
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
