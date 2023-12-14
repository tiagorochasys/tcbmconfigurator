import '/backend/schema/structs/index.dart';
import '/components/input_ambiente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'modal_add_ambiente_widget.dart' show ModalAddAmbienteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalAddAmbienteModel extends FlutterFlowModel<ModalAddAmbienteWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for inputAmbiente dynamic component.
  late FlutterFlowDynamicModels<InputAmbienteModel> inputAmbienteModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inputAmbienteModels = FlutterFlowDynamicModels(() => InputAmbienteModel());
  }

  void dispose() {
    inputAmbienteModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
