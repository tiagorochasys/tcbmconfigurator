import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'admin_widget.dart' show AdminWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminModel extends FlutterFlowModel<AdminWidget> {
  ///  Local state fields for this page.

  List<dynamic> pedidos = [];
  void addToPedidos(dynamic item) => pedidos.add(item);
  void removeFromPedidos(dynamic item) => pedidos.remove(item);
  void removeAtIndexFromPedidos(int index) => pedidos.removeAt(index);
  void insertAtIndexInPedidos(int index, dynamic item) =>
      pedidos.insert(index, item);
  void updatePedidosAtIndex(int index, Function(dynamic) updateFn) =>
      pedidos[index] = updateFn(pedidos[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (ShowMe)] action in admin widget.
  ApiCallResponse? apiResultk3v;
  // Stores action output result for [Backend Call - API (ListaTodosPedidos)] action in admin widget.
  ApiCallResponse? apiResulthjd;
  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaController;
  String? Function(BuildContext, String?)? pesquisaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    pesquisaFocusNode?.dispose();
    pesquisaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
