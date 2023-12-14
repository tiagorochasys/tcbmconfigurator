import '/backend/schema/structs/index.dart';
import '/components/modal_add_ambiente_widget.dart';
import '/components/modal_alert_widget.dart';
import '/components/modal_config_vazia_widget.dart';
import '/components/modal_cuidado_config_widget.dart';
import '/components/modal_enviar_p_d_f_widget.dart';
import '/components/modal_excluir_cabo_widget.dart';
import '/components/modal_excluir_interface_widget.dart';
import '/components/modal_help_widget.dart';
import '/components/modal_quantidade_cabo_widget.dart';
import '/components/modal_reordenar_modulos_widget.dart';
import '/components/modal_selecione_gabinete_widget.dart';
import '/components/modal_sem_interfaces_widget.dart';
import '/components/modall_preenchaslots_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int? slots = 0;

  int? index;

  int? quantidade = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // State field(s) for Column widget.
  ScrollController? columnController4;
  // State field(s) for Expandable1 widget.
  late ExpandableController expandable1Controller;

  // State field(s) for Expandable2 widget.
  late ExpandableController expandable2Controller;

  // State field(s) for Expandable3 widget.
  late ExpandableController expandable3Controller;

  // State field(s) for Expandable4 widget.
  late ExpandableController expandable4Controller;

  // State field(s) for Carousel1 widget.
  CarouselController? carousel1Controller;

  int carousel1CurrentIndex = 1;

  // State field(s) for Carousel2 widget.
  CarouselController? carousel2Controller;

  int carousel2CurrentIndex = 1;

  // State field(s) for Carousel3 widget.
  CarouselController? carousel3Controller;

  int carousel3CurrentIndex = 1;

  // State field(s) for Expandable5 widget.
  late ExpandableController expandable5Controller;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for Row widget.
  ScrollController? rowController1;
  // State field(s) for Row-Interfaces widget.
  ScrollController? rowInterfaces;
  // State field(s) for Row widget.
  ScrollController? rowController2;
  // State field(s) for Row-Cabos widget.
  ScrollController? rowCabos;
  // State field(s) for Row widget.
  ScrollController? rowController3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    columnController3 = ScrollController();
    columnController4 = ScrollController();
    rowController1 = ScrollController();
    rowInterfaces = ScrollController();
    rowController2 = ScrollController();
    rowCabos = ScrollController();
    rowController3 = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    columnController3?.dispose();
    columnController4?.dispose();
    expandable1Controller.dispose();
    expandable2Controller.dispose();
    expandable3Controller.dispose();
    expandable4Controller.dispose();
    expandable5Controller.dispose();
    rowController1?.dispose();
    rowInterfaces?.dispose();
    rowController2?.dispose();
    rowCabos?.dispose();
    rowController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
