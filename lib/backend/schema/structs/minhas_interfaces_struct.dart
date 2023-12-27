// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MinhasInterfacesStruct extends BaseStruct {
  MinhasInterfacesStruct({
    int? quantidade,
    double? valor,
    List<ItensStruct>? itensSelecionados,
    List<String>? ambiente,
    int? gabinete,
    String? color,
    int? slots,
    String? imagem,
  })  : _quantidade = quantidade,
        _valor = valor,
        _itensSelecionados = itensSelecionados,
        _ambiente = ambiente,
        _gabinete = gabinete,
        _color = color,
        _slots = slots,
        _imagem = imagem;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "itens_selecionados" field.
  List<ItensStruct>? _itensSelecionados;
  List<ItensStruct> get itensSelecionados => _itensSelecionados ?? const [];
  set itensSelecionados(List<ItensStruct>? val) => _itensSelecionados = val;
  void updateItensSelecionados(Function(List<ItensStruct>) updateFn) =>
      updateFn(_itensSelecionados ??= []);
  bool hasItensSelecionados() => _itensSelecionados != null;

  // "ambiente" field.
  List<String>? _ambiente;
  List<String> get ambiente => _ambiente ?? const [];
  set ambiente(List<String>? val) => _ambiente = val;
  void updateAmbiente(Function(List<String>) updateFn) =>
      updateFn(_ambiente ??= []);
  bool hasAmbiente() => _ambiente != null;

  // "gabinete" field.
  int? _gabinete;
  int get gabinete => _gabinete ?? 0;
  set gabinete(int? val) => _gabinete = val;
  void incrementGabinete(int amount) => _gabinete = gabinete + amount;
  bool hasGabinete() => _gabinete != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;
  bool hasColor() => _color != null;

  // "slots" field.
  int? _slots;
  int get slots => _slots ?? 0;
  set slots(int? val) => _slots = val;
  void incrementSlots(int amount) => _slots = slots + amount;
  bool hasSlots() => _slots != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;
  bool hasImagem() => _imagem != null;

  static MinhasInterfacesStruct fromMap(Map<String, dynamic> data) =>
      MinhasInterfacesStruct(
        quantidade: castToType<int>(data['quantidade']),
        valor: castToType<double>(data['valor']),
        itensSelecionados: getStructList(
          data['itens_selecionados'],
          ItensStruct.fromMap,
        ),
        ambiente: getDataList(data['ambiente']),
        gabinete: castToType<int>(data['gabinete']),
        color: data['color'] as String?,
        slots: castToType<int>(data['slots']),
        imagem: data['imagem'] as String?,
      );

  static MinhasInterfacesStruct? maybeFromMap(dynamic data) => data is Map
      ? MinhasInterfacesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quantidade': _quantidade,
        'valor': _valor,
        'itens_selecionados':
            _itensSelecionados?.map((e) => e.toMap()).toList(),
        'ambiente': _ambiente,
        'gabinete': _gabinete,
        'color': _color,
        'slots': _slots,
        'imagem': _imagem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'itens_selecionados': serializeParam(
          _itensSelecionados,
          ParamType.DataStruct,
          true,
        ),
        'ambiente': serializeParam(
          _ambiente,
          ParamType.String,
          true,
        ),
        'gabinete': serializeParam(
          _gabinete,
          ParamType.int,
        ),
        'color': serializeParam(
          _color,
          ParamType.String,
        ),
        'slots': serializeParam(
          _slots,
          ParamType.int,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
      }.withoutNulls;

  static MinhasInterfacesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MinhasInterfacesStruct(
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        itensSelecionados: deserializeStructParam<ItensStruct>(
          data['itens_selecionados'],
          ParamType.DataStruct,
          true,
          structBuilder: ItensStruct.fromSerializableMap,
        ),
        ambiente: deserializeParam<String>(
          data['ambiente'],
          ParamType.String,
          true,
        ),
        gabinete: deserializeParam(
          data['gabinete'],
          ParamType.int,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.String,
          false,
        ),
        slots: deserializeParam(
          data['slots'],
          ParamType.int,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MinhasInterfacesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MinhasInterfacesStruct &&
        quantidade == other.quantidade &&
        valor == other.valor &&
        listEquality.equals(itensSelecionados, other.itensSelecionados) &&
        listEquality.equals(ambiente, other.ambiente) &&
        gabinete == other.gabinete &&
        color == other.color &&
        slots == other.slots &&
        imagem == other.imagem;
  }

  @override
  int get hashCode => const ListEquality().hash([
        quantidade,
        valor,
        itensSelecionados,
        ambiente,
        gabinete,
        color,
        slots,
        imagem
      ]);
}

MinhasInterfacesStruct createMinhasInterfacesStruct({
  int? quantidade,
  double? valor,
  int? gabinete,
  String? color,
  int? slots,
  String? imagem,
}) =>
    MinhasInterfacesStruct(
      quantidade: quantidade,
      valor: valor,
      gabinete: gabinete,
      color: color,
      slots: slots,
      imagem: imagem,
    );
