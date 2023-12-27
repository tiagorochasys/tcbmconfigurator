import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AdicionaPedidoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? celular = '',
    String? empresa = '',
    String? observacoes = '',
    dynamic? interfacesJson,
    dynamic? cabosJson,
  }) async {
    final interfaces = _serializeJson(interfacesJson, true);
    final cabos = _serializeJson(cabosJson, true);
    final ffApiRequestBody = '''
{
  "pedido": {
    "nome": "${nome}",
    "empresa": "${empresa}",
    "telefone": "${celular}",
    "email": "${email}",
    "interfaces": ${interfaces},
    "cabos": ${cabos},
    "observacoes": "${observacoes}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AdicionaPedido',
      apiUrl: 'https://backconfigurator.absoluteacoustics.com.br/pedido',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListaTodosPedidosCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListaTodosPedidos',
      apiUrl: 'https://backconfigurator.absoluteacoustics.com.br/pedido',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? usuario = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "usuario": "${usuario}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://backconfigurator.absoluteacoustics.com.br/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CriaUsuarioCall {
  static Future<ApiCallResponse> call({
    String? usuario = '',
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "usuario": "${usuario}",
  "email": "${email}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriaUsuario',
      apiUrl: 'https://backconfigurator.absoluteacoustics.com.br/auth/signup/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ShowMeCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ShowMe',
      apiUrl: 'https://backconfigurator.absoluteacoustics.com.br/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
