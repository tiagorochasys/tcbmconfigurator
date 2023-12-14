import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modal_quantidade_cabo_widget.dart' show ModalQuantidadeCaboWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalQuantidadeCaboModel
    extends FlutterFlowModel<ModalQuantidadeCaboWidget> {
  ///  Local state fields for this component.

  ItensStruct? cabo;
  void updateCaboStruct(Function(ItensStruct) updateFn) =>
      updateFn(cabo ??= ItensStruct());

  int? quantidadeCabo = 1;

  int? quantidadeBateria = 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
