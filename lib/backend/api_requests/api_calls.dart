import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start teste Group Code

class TesteGroup {
  static String baseUrl = 'teste';
  static Map<String, String> headers = {};
}

/// End teste Group Code

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
      apiUrl:
          'https://tcb-m-configurator-api-e62c2cd0c9a2.herokuapp.com/pedido',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListaTodosPedidosCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListaTodosPedidos',
      apiUrl:
          'https://tcb-m-configurator-api-e62c2cd0c9a2.herokuapp.com/pedido',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
      apiUrl:
          'https://tcb-m-configurator-api-e62c2cd0c9a2.herokuapp.com/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
      apiUrl:
          'https://tcb-m-configurator-api-e62c2cd0c9a2.herokuapp.com/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ShowMeCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ShowMe',
      apiUrl:
          'https://tcb-m-configurator-api-e62c2cd0c9a2.herokuapp.com/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
