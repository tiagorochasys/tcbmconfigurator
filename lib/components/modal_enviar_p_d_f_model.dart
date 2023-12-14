import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/modal_p_d_fgerado_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'modal_enviar_p_d_f_widget.dart' show ModalEnviarPDFWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalEnviarPDFModel extends FlutterFlowModel<ModalEnviarPDFWidget> {
  ///  Local state fields for this component.

  String link = '';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Por favor, insira um e-mail válido.';
    }
    return null;
  }

  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularController;
  String? Function(BuildContext, String?)? celularControllerValidator;
  String? _celularControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for empresa widget.
  FocusNode? empresaFocusNode;
  TextEditingController? empresaController;
  String? Function(BuildContext, String?)? empresaControllerValidator;
  // State field(s) for observacoes widget.
  FocusNode? observacoesFocusNode;
  TextEditingController? observacoesController;
  String? Function(BuildContext, String?)? observacoesControllerValidator;
  // Stores action output result for [Backend Call - API (AdicionaPedido)] action in Button widget.
  ApiCallResponse? apiEnviaPedido;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    celularControllerValidator = _celularControllerValidator;
  }

  void dispose() {
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    celularFocusNode?.dispose();
    celularController?.dispose();

    empresaFocusNode?.dispose();
    empresaController?.dispose();

    observacoesFocusNode?.dispose();
    observacoesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
