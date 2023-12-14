import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'input_ambiente_widget.dart' show InputAmbienteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputAmbienteModel extends FlutterFlowModel<InputAmbienteWidget> {
  ///  Local state fields for this component.

  String nomeambiente = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for Ambiente widget.
  FocusNode? ambienteFocusNode;
  TextEditingController? ambienteController;
  String? Function(BuildContext, String?)? ambienteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    ambienteFocusNode?.dispose();
    ambienteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
