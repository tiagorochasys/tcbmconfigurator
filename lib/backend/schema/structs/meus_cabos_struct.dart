// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeusCabosStruct extends BaseStruct {
  MeusCabosStruct({
    int? quantidade,
    double? valor,
    ItensStruct? listaItens,
    String? imagem,
  })  : _quantidade = quantidade,
        _valor = valor,
        _listaItens = listaItens,
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

  // "lista_itens" field.
  ItensStruct? _listaItens;
  ItensStruct get listaItens => _listaItens ?? ItensStruct();
  set listaItens(ItensStruct? val) => _listaItens = val;
  void updateListaItens(Function(ItensStruct) updateFn) =>
      updateFn(_listaItens ??= ItensStruct());
  bool hasListaItens() => _listaItens != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;
  bool hasImagem() => _imagem != null;

  static MeusCabosStruct fromMap(Map<String, dynamic> data) => MeusCabosStruct(
        quantidade: castToType<int>(data['quantidade']),
        valor: castToType<double>(data['valor']),
        listaItens: ItensStruct.maybeFromMap(data['lista_itens']),
        imagem: data['imagem'] as String?,
      );

  static MeusCabosStruct? maybeFromMap(dynamic data) => data is Map
      ? MeusCabosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quantidade': _quantidade,
        'valor': _valor,
        'lista_itens': _listaItens?.toMap(),
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
        'lista_itens': serializeParam(
          _listaItens,
          ParamType.DataStruct,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
      }.withoutNulls;

  static MeusCabosStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeusCabosStruct(
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
        listaItens: deserializeStructParam(
          data['lista_itens'],
          ParamType.DataStruct,
          false,
          structBuilder: ItensStruct.fromSerializableMap,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MeusCabosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeusCabosStruct &&
        quantidade == other.quantidade &&
        valor == other.valor &&
        listaItens == other.listaItens &&
        imagem == other.imagem;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([quantidade, valor, listaItens, imagem]);
}

MeusCabosStruct createMeusCabosStruct({
  int? quantidade,
  double? valor,
  ItensStruct? listaItens,
  String? imagem,
}) =>
    MeusCabosStruct(
      quantidade: quantidade,
      valor: valor,
      listaItens: listaItens ?? ItensStruct(),
      imagem: imagem,
    );
