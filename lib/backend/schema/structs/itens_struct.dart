// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensStruct extends BaseStruct {
  ItensStruct({
    String? descricao,
    String? tipo,
    double? preco,
    int? cod,
    String? imagem,
    String? descAlternativa,
  })  : _descricao = descricao,
        _tipo = tipo,
        _preco = preco,
        _cod = cod,
        _imagem = imagem,
        _descAlternativa = descAlternativa;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;
  bool hasTipo() => _tipo != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;
  void incrementPreco(double amount) => _preco = preco + amount;
  bool hasPreco() => _preco != null;

  // "cod" field.
  int? _cod;
  int get cod => _cod ?? 0;
  set cod(int? val) => _cod = val;
  void incrementCod(int amount) => _cod = cod + amount;
  bool hasCod() => _cod != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;
  bool hasImagem() => _imagem != null;

  // "desc_alternativa" field.
  String? _descAlternativa;
  String get descAlternativa => _descAlternativa ?? '';
  set descAlternativa(String? val) => _descAlternativa = val;
  bool hasDescAlternativa() => _descAlternativa != null;

  static ItensStruct fromMap(Map<String, dynamic> data) => ItensStruct(
        descricao: data['descricao'] as String?,
        tipo: data['tipo'] as String?,
        preco: castToType<double>(data['preco']),
        cod: castToType<int>(data['cod']),
        imagem: data['imagem'] as String?,
        descAlternativa: data['desc_alternativa'] as String?,
      );

  static ItensStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItensStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'descricao': _descricao,
        'tipo': _tipo,
        'preco': _preco,
        'cod': _cod,
        'imagem': _imagem,
        'desc_alternativa': _descAlternativa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'cod': serializeParam(
          _cod,
          ParamType.int,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
        'desc_alternativa': serializeParam(
          _descAlternativa,
          ParamType.String,
        ),
      }.withoutNulls;

  static ItensStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItensStruct(
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        cod: deserializeParam(
          data['cod'],
          ParamType.int,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
        descAlternativa: deserializeParam(
          data['desc_alternativa'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ItensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItensStruct &&
        descricao == other.descricao &&
        tipo == other.tipo &&
        preco == other.preco &&
        cod == other.cod &&
        imagem == other.imagem &&
        descAlternativa == other.descAlternativa;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([descricao, tipo, preco, cod, imagem, descAlternativa]);
}

ItensStruct createItensStruct({
  String? descricao,
  String? tipo,
  double? preco,
  int? cod,
  String? imagem,
  String? descAlternativa,
}) =>
    ItensStruct(
      descricao: descricao,
      tipo: tipo,
      preco: preco,
      cod: cod,
      imagem: imagem,
      descAlternativa: descAlternativa,
    );
