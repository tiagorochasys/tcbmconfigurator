import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ItensStruct> _listaItens = [
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"TCB-M5-B\",\"tipo\":\"Gabinete5black\",\"preco\":\"2260\",\"cod\":\"5294\",\"imagem\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/lan8shqibkdn/black_skpad_5.png\",\"desc_alternativa\":\"5 Slot Cabinet - Brushed Black\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"TCB-M5-S\",\"tipo\":\"Gabinete5silver\",\"preco\":\"2260\",\"cod\":\"5295\",\"imagem\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/p8n51yovylsj/silver_skpad_5.png\",\"desc_alternativa\":\"5 Slot Cabinet - Mac Silver\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"TCB-M8-B\",\"tipo\":\"Gabinete8black\",\"preco\":\"2620\",\"cod\":\"5296\",\"imagem\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/tmond29gkjbo/black_skpad_8.png\",\"desc_alternativa\":\"8 Slot Cabinet - Brushed Black\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"TCB-M8-S\",\"tipo\":\"Gabinete8silver\",\"preco\":\"2620\",\"cod\":\"5297\",\"imagem\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tcb-m-hx3hbs/assets/yd1gfdipng07/silver_skpad_8.png\",\"desc_alternativa\":\"8 Slot Cabinet - Mac Silver\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-BLK\",\"tipo\":\"Módulo1\",\"preco\":\"65\",\"cod\":\"5313\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20BLANK%20Module.png\",\"desc_alternativa\":\"1 Slot Blank Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-HD1\",\"tipo\":\"Módulo1\",\"preco\":\"407\",\"cod\":\"5323\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20Single%20HDMI%20Module.png\",\"desc_alternativa\":\"1 Slot Single HDMI Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-UB1\",\"tipo\":\"Módulo1\",\"preco\":\"343\",\"cod\":\"5325\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20Single%20USB%20Module.png\",\"desc_alternativa\":\"1 Slot Single USB Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-ET1\",\"tipo\":\"Módulo1\",\"preco\":\"289\",\"cod\":\"5324\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20Single%20ETHERNET%20Module.png\",\"desc_alternativa\":\"1 Slot Single ETHERNET Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-HD2\",\"tipo\":\"Módulo1\",\"preco\":\"717\",\"cod\":\"5322\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20Dual%20HDMI%20Module.png\",\"desc_alternativa\":\"1 Slot Dual HDMI Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-UB1HD1\",\"tipo\":\"Módulo1\",\"preco\":\"642\",\"cod\":\"5230\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20USBHDMI%20Module.png\",\"desc_alternativa\":\"1 Slot USB/HDMI Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-SH1-HD1\",\"tipo\":\"Módulo1\",\"preco\":\"471\",\"cod\":\"5314\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20SHOW%20MEHDMI%20Module.png\",\"desc_alternativa\":\"1 Slot SHOW ME / HDMI Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-UB2\",\"tipo\":\"Módulo1\",\"preco\":\"600\",\"cod\":\"5318\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20Dual%20USB%20Module.png\",\"desc_alternativa\":\"1 Slot Dual USB Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-CH2\",\"tipo\":\"Módulo1\",\"preco\":\"782\",\"cod\":\"5319\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20Dual%20CHARGER%20Module.png\",\"desc_alternativa\":\"1 Slot Dual CHARGER Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-UB1ET1\",\"tipo\":\"Módulo1\",\"preco\":\"503\",\"cod\":\"5316\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20USBETHERNET%20Module.png\",\"desc_alternativa\":\"1 Slot USB / ETHERNET Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-ET2\",\"tipo\":\"Módulo1\",\"preco\":\"471\",\"cod\":\"5317\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20Dual%20ETHERNET%20Module.png\",\"desc_alternativa\":\"1 Slot Dual ETHERNET Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-1-VG1A1\",\"tipo\":\"Módulo1\",\"preco\":\"471\",\"cod\":\"5315\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/1W%20VGAAUDIO%20Module.png\",\"desc_alternativa\":\"1 Slot VGA / AUDIO Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-2-PAS3\",\"tipo\":\"Módulo2\",\"preco\":\"172\",\"cod\":\"5326\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/2W%20Triple%20CABLE%20PASSTROUGH%20Module.png\",\"desc_alternativa\":\"2 Slot Triple CABLE PASSTROUGH Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-2-PAS4\",\"tipo\":\"Módulo2\",\"preco\":\"225\",\"cod\":\"5603\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/Quadruple%20Cable.png\",\"desc_alternativa\":\"2 Slot Quad CABLE PASSTROUGH Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-2-SH1PAS4\",\"tipo\":\"Módulo2\",\"preco\":\"268\",\"cod\":\"5602\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/Quadruple%20Cable%20Show%20Me.png\",\"desc_alternativa\":\"2 Slot SHOW ME/Quad CABLE PASSTROUGH Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-2-BR1\",\"tipo\":\"Módulo2\",\"preco\":\"321\",\"cod\":\"5327\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/2W%20Single%20BR%20AC%20Module.png\",\"desc_alternativa\":\"2 Slot Single BR AC Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-3-BR1 \",\"tipo\":\"Módulo3\",\"preco\":\"321\",\"cod\":\"5328\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/price/public/assets/img2/3W%20Single%20BR%20AC%20Module.png\",\"desc_alternativa\":\"3 Slot Single BR AC Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-3-BR2\",\"tipo\":\"Módulo3\",\"preco\":\"471\",\"cod\":\"5329\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/3W%20Dual%20BR%20AC%20Module.png\",\"desc_alternativa\":\"3 Slot Dual BR AC Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-3-BR1CH2\",\"tipo\":\"Módulo3\",\"preco\":\"889\",\"cod\":\"5331\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/3W%20Single%20BR%20ACDual%20CHARGER%20Module.png\",\"desc_alternativa\":\"3 Slot Single BR AC / Dual CHARGER Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-3-BR1ET2\",\"tipo\":\"Módulo3\",\"preco\":\"675\",\"cod\":\"5330\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/3W%20Single%20BR%20ACDual%20ETHERNET%20Module.png\",\"desc_alternativa\":\"3 Slot Single BR AC / Dual ETHERNET Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-3-UN1\",\"tipo\":\"Módulo3\",\"preco\":\"332\",\"cod\":\"5332\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/3W%20Single%20UNIV%20AC%20Module.png\",\"desc_alternativa\":\"3 Slot Single UNIV AC Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-3-UN1ET2\",\"tipo\":\"Módulo3\",\"preco\":\"696\",\"cod\":\"5333\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/3W%20Single%20UNIV%20ACDual%20ETHERNET%20Module.png\",\"desc_alternativa\":\"3 Slot Single UNIV AC / Dual ETHERNET Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"MD-3-UN1CH2\",\"tipo\":\"Módulo3\",\"preco\":\"889\",\"cod\":\"5334\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/3W%20Single%20UNIV%20ACDual%20CHARGER%20Module.png\",\"desc_alternativa\":\"3 Slot Single UNIV AC / Dual CHARGER Module\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-USB-C-HDMI-2M\",\"tipo\":\"Cabo\",\"preco\":\"418\",\"cod\":\"6582\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/usb-c-hdmi.png\",\"desc_alternativa\":\"Function Coded Cable USB-C to HDMI 4K60Hz\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-USB-AA - 2M\",\"tipo\":\"Cabo\",\"preco\":\"238\",\"cod\":\"5335\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/USB.png\",\"desc_alternativa\":\"Function Coded Cable USB-A 3.0 MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-USB-AB - 2M\",\"tipo\":\"Cabo\",\"preco\":\"238\",\"cod\":\"5685\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/USB_USB-B.png\",\"desc_alternativa\":\"Function Coded Cable USB-A USB-B MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-HDMI - 2M\",\"tipo\":\"Cabo\",\"preco\":\"238\",\"cod\":\"5337\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/HDMI.png\",\"desc_alternativa\":\"Function Coded Cable HDMI MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-TDB - 2M\",\"tipo\":\"Cabo\",\"preco\":\"1299\",\"cod\":\"5340\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/USB-C.png\",\"desc_alternativa\":\"Function Coded Cable Thunderbolt 20 Gbps 60W MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-CHRG - 2M\",\"tipo\":\"Cabo\",\"preco\":\"251\",\"cod\":\"5686\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/USB-C_CHARGER.png\",\"desc_alternativa\":\"Function Coded Cable USB-C Charge\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-VGA - 2M\",\"tipo\":\"Cabo\",\"preco\":\"286\",\"cod\":\"5336\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/VGA_.png\",\"desc_alternativa\":\"Function Coded Cable VGA MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-P2 - 2M\",\"tipo\":\"Cabo\",\"preco\":\"84\",\"cod\":\"5339\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/P2.png\",\"desc_alternativa\":\"Function Coded Cable Audio P2 MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-PATCH5 - 2M\",\"tipo\":\"Cabo\",\"preco\":\"107\",\"cod\":\"5687\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/RJ45_cat5.png\",\"desc_alternativa\":\"Function Coded Cable CAT5 Patch MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"FCC-PATCH6 - 2M\",\"tipo\":\"Cabo\",\"preco\":\"131\",\"cod\":\"5338\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/RJ45_cat6.png\",\"desc_alternativa\":\"Function Coded Cable CAT6 Patch MM\"}')),
    ItensStruct.fromSerializableMap(jsonDecode(
        '{\"descricao\":\"TCB-PWR100\",\"tipo\":\"Cabo\",\"preco\":\"642\",\"cod\":\"5688\",\"imagem\":\"https://www.absoluteacoustics.com.br/tcb/configurator/public/assets/img2/charger.png\",\"desc_alternativa\":\"Fonte USB-C 100W\"}'))
  ];
  List<ItensStruct> get listaItens => _listaItens;
  set listaItens(List<ItensStruct> _value) {
    _listaItens = _value;
  }

  void addToListaItens(ItensStruct _value) {
    _listaItens.add(_value);
  }

  void removeFromListaItens(ItensStruct _value) {
    _listaItens.remove(_value);
  }

  void removeAtIndexFromListaItens(int _index) {
    _listaItens.removeAt(_index);
  }

  void updateListaItensAtIndex(
    int _index,
    ItensStruct Function(ItensStruct) updateFn,
  ) {
    _listaItens[_index] = updateFn(_listaItens[_index]);
  }

  void insertAtIndexInListaItens(int _index, ItensStruct _value) {
    _listaItens.insert(_index, _value);
  }

  int _gabinete = 0;
  int get gabinete => _gabinete;
  set gabinete(int _value) {
    _gabinete = _value;
  }

  String _color = 'black';
  String get color => _color;
  set color(String _value) {
    _color = _value;
  }

  int _keypad = 0;
  int get keypad => _keypad;
  set keypad(int _value) {
    _keypad = _value;
  }

  int _qtdModulos = 0;
  int get qtdModulos => _qtdModulos;
  set qtdModulos(int _value) {
    _qtdModulos = _value;
  }

  String _filtroItem = 'Módulo';
  String get filtroItem => _filtroItem;
  set filtroItem(String _value) {
    _filtroItem = _value;
  }

  int _tabModulos = 3;
  int get tabModulos => _tabModulos;
  set tabModulos(int _value) {
    _tabModulos = _value;
  }

  List<ItensStruct> _minhaSelecao = [];
  List<ItensStruct> get minhaSelecao => _minhaSelecao;
  set minhaSelecao(List<ItensStruct> _value) {
    _minhaSelecao = _value;
  }

  void addToMinhaSelecao(ItensStruct _value) {
    _minhaSelecao.add(_value);
  }

  void removeFromMinhaSelecao(ItensStruct _value) {
    _minhaSelecao.remove(_value);
  }

  void removeAtIndexFromMinhaSelecao(int _index) {
    _minhaSelecao.removeAt(_index);
  }

  void updateMinhaSelecaoAtIndex(
    int _index,
    ItensStruct Function(ItensStruct) updateFn,
  ) {
    _minhaSelecao[_index] = updateFn(_minhaSelecao[_index]);
  }

  void insertAtIndexInMinhaSelecao(int _index, ItensStruct _value) {
    _minhaSelecao.insert(_index, _value);
  }

  bool _hideComponent = false;
  bool get hideComponent => _hideComponent;
  set hideComponent(bool _value) {
    _hideComponent = _value;
  }

  int _slots = 0;
  int get slots => _slots;
  set slots(int _value) {
    _slots = _value;
  }

  String _plataforma = 'compreco';
  String get plataforma => _plataforma;
  set plataforma(String _value) {
    _plataforma = _value;
  }

  List<MinhasInterfacesStruct> _minhasInterfaces = [];
  List<MinhasInterfacesStruct> get minhasInterfaces => _minhasInterfaces;
  set minhasInterfaces(List<MinhasInterfacesStruct> _value) {
    _minhasInterfaces = _value;
  }

  void addToMinhasInterfaces(MinhasInterfacesStruct _value) {
    _minhasInterfaces.add(_value);
  }

  void removeFromMinhasInterfaces(MinhasInterfacesStruct _value) {
    _minhasInterfaces.remove(_value);
  }

  void removeAtIndexFromMinhasInterfaces(int _index) {
    _minhasInterfaces.removeAt(_index);
  }

  void updateMinhasInterfacesAtIndex(
    int _index,
    MinhasInterfacesStruct Function(MinhasInterfacesStruct) updateFn,
  ) {
    _minhasInterfaces[_index] = updateFn(_minhasInterfaces[_index]);
  }

  void insertAtIndexInMinhasInterfaces(
      int _index, MinhasInterfacesStruct _value) {
    _minhasInterfaces.insert(_index, _value);
  }

  bool _editaInterface = false;
  bool get editaInterface => _editaInterface;
  set editaInterface(bool _value) {
    _editaInterface = _value;
  }

  List<dynamic> _interfaceJson = [];
  List<dynamic> get interfaceJson => _interfaceJson;
  set interfaceJson(List<dynamic> _value) {
    _interfaceJson = _value;
  }

  void addToInterfaceJson(dynamic _value) {
    _interfaceJson.add(_value);
  }

  void removeFromInterfaceJson(dynamic _value) {
    _interfaceJson.remove(_value);
  }

  void removeAtIndexFromInterfaceJson(int _index) {
    _interfaceJson.removeAt(_index);
  }

  void updateInterfaceJsonAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _interfaceJson[_index] = updateFn(_interfaceJson[_index]);
  }

  void insertAtIndexInInterfaceJson(int _index, dynamic _value) {
    _interfaceJson.insert(_index, _value);
  }

  List<String> _ambientes = [];
  List<String> get ambientes => _ambientes;
  set ambientes(List<String> _value) {
    _ambientes = _value;
  }

  void addToAmbientes(String _value) {
    _ambientes.add(_value);
  }

  void removeFromAmbientes(String _value) {
    _ambientes.remove(_value);
  }

  void removeAtIndexFromAmbientes(int _index) {
    _ambientes.removeAt(_index);
  }

  void updateAmbientesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _ambientes[_index] = updateFn(_ambientes[_index]);
  }

  void insertAtIndexInAmbientes(int _index, String _value) {
    _ambientes.insert(_index, _value);
  }

  List<MeusCabosStruct> _meusCabos = [];
  List<MeusCabosStruct> get meusCabos => _meusCabos;
  set meusCabos(List<MeusCabosStruct> _value) {
    _meusCabos = _value;
  }

  void addToMeusCabos(MeusCabosStruct _value) {
    _meusCabos.add(_value);
  }

  void removeFromMeusCabos(MeusCabosStruct _value) {
    _meusCabos.remove(_value);
  }

  void removeAtIndexFromMeusCabos(int _index) {
    _meusCabos.removeAt(_index);
  }

  void updateMeusCabosAtIndex(
    int _index,
    MeusCabosStruct Function(MeusCabosStruct) updateFn,
  ) {
    _meusCabos[_index] = updateFn(_meusCabos[_index]);
  }

  void insertAtIndexInMeusCabos(int _index, MeusCabosStruct _value) {
    _meusCabos.insert(_index, _value);
  }

  int _mesa = 0;
  int get mesa => _mesa;
  set mesa(int _value) {
    _mesa = _value;
  }

  List<String> _meusAmbientesSelecionados = [];
  List<String> get meusAmbientesSelecionados => _meusAmbientesSelecionados;
  set meusAmbientesSelecionados(List<String> _value) {
    _meusAmbientesSelecionados = _value;
  }

  void addToMeusAmbientesSelecionados(String _value) {
    _meusAmbientesSelecionados.add(_value);
  }

  void removeFromMeusAmbientesSelecionados(String _value) {
    _meusAmbientesSelecionados.remove(_value);
  }

  void removeAtIndexFromMeusAmbientesSelecionados(int _index) {
    _meusAmbientesSelecionados.removeAt(_index);
  }

  void updateMeusAmbientesSelecionadosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _meusAmbientesSelecionados[_index] =
        updateFn(_meusAmbientesSelecionados[_index]);
  }

  void insertAtIndexInMeusAmbientesSelecionados(int _index, String _value) {
    _meusAmbientesSelecionados.insert(_index, _value);
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  String _linkpdfpreco = '';
  String get linkpdfpreco => _linkpdfpreco;
  set linkpdfpreco(String _value) {
    _linkpdfpreco = _value;
  }

  String _linkpdfsempreco = '';
  String get linkpdfsempreco => _linkpdfsempreco;
  set linkpdfsempreco(String _value) {
    _linkpdfsempreco = _value;
  }

  bool _mostrapreco = false;
  bool get mostrapreco => _mostrapreco;
  set mostrapreco(bool _value) {
    _mostrapreco = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
