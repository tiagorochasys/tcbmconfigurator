import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'input_ambiente_model.dart';
export 'input_ambiente_model.dart';

class InputAmbienteWidget extends StatefulWidget {
  const InputAmbienteWidget({
    Key? key,
    required this.nomeAmbiente,
  }) : super(key: key);

  final String? nomeAmbiente;

  @override
  _InputAmbienteWidgetState createState() => _InputAmbienteWidgetState();
}

class _InputAmbienteWidgetState extends State<InputAmbienteWidget> {
  late InputAmbienteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputAmbienteModel());

    _model.ambienteController ??=
        TextEditingController(text: widget.nomeAmbiente);
    _model.ambienteFocusNode ??= FocusNode();

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

    return TextFormField(
      controller: _model.ambienteController,
      focusNode: _model.ambienteFocusNode,
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Ambiente',
        labelStyle: FlutterFlowTheme.of(context).bodyLarge.override(
              fontFamily: 'Open Sans',
              color: Color(0xFF232323),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
        hintText: 'Ex: Sala de Reunião',
        hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              color: Color(0xFF898989),
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFDADADA),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF232323),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Open Sans',
          ),
      validator: _model.ambienteControllerValidator.asValidator(context),
    );
  }
}
