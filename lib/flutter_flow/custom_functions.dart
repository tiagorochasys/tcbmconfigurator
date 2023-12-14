import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

int? somaModulos(
  int valorInicial,
  int? aSomar,
) {
  // some dois valores
  if (aSomar == null) {
    return valorInicial.abs();
  } else {
    return (valorInicial + aSomar).abs();
  }
}

int validaSlot(
  int? inicial,
  int? valoraSomar,
  int? limite,
) {
  // só some valor inicial com valor a somar se resultado for menor ou igual limite ou retorne zero
  int resultado = (inicial ?? 0) + (valoraSomar ?? 0);
  return resultado <= (limite ?? 0) ? resultado : 0;
}

List<ItensStruct>? antesOrdenacao(
  int? currentIndex,
  List<ItensStruct>? lista,
) {
  // reorder item from list
  if (currentIndex == null || lista == null || currentIndex >= lista.length) {
    return lista;
  }

  final item = lista[currentIndex];
  lista.removeAt(currentIndex);
  lista.insert(math.max(0, currentIndex - 1), item);
  return lista;
}

double? somaValorinterface(List<ItensStruct>? listaItens) {
  // totalize a coluna preco
  double total = 0.0;
  if (listaItens != null) {
    for (var item in listaItens) {
      total += item.preco ?? 0.0;
    }
  }
  return total;
}

int? addQuantidade(
  int? quantidade,
  int? inicial,
) {
  // somar os valores
  if (quantidade == null || inicial == null) {
    return null;
  }
  return quantidade + inicial;
}

double? somaTotalinterfaces(List<MinhasInterfacesStruct>? listaInterfaces) {
  // totalize coluna valor e multiplique por quantidade
  double? soma = 0;
  if (listaInterfaces != null) {
    for (var item in listaInterfaces) {
      soma = soma! + (item.valor * item.quantidade);
    }
  }
  return soma;
}

List<ItensStruct>? nextOrdenacao(
  int? currentIndex,
  List<ItensStruct>? lista,
) {
  // reorder item from list
  if (currentIndex == null || lista == null || currentIndex >= lista.length) {
    return lista;
  }

  final item = lista[currentIndex];
  lista.removeAt(currentIndex);
  lista.insert(math.max(0, currentIndex + 1), item);
  return lista;
}

double? somaTotalinterCabos(List<MeusCabosStruct>? listaCabos) {
  // totalize coluna valor e multiplique por quantidade
  double? soma = 0;
  if (listaCabos != null) {
    for (var item in listaCabos) {
      soma = soma! + (item.valor * item.quantidade);
    }
  }
  return soma;
}

int? subtraiaUmCopy(int? valor1) {
  // subtraia valor por 1
  return valor1 != null ? valor1 - 1 : null;
}

int? removeQuantidade(
  int? inicial,
  int? remover,
) {
  // subtraia valor inicial por remover e retorne 1 caso valor retornado ser zero ou negativo
  if (inicial == null || remover == null) {
    return null;
  }
  int resultado = inicial - remover;
  return resultado <= 0 ? 1 : resultado;
}

double? multiplicaValor(
  int? quantidade,
  double? valorInterface,
) {
  // multiplique os valores
  if (quantidade != null && valorInterface != null) {
    return quantidade * valorInterface;
  } else {
    return null;
  }
}

double? somaTotal2(
  double? valor1,
  double? valor2,
) {
  // some dois valores
  if (valor1 == null || valor2 == null) {
    return null;
  }
  return valor1 + valor2;
}

int someQuantidadecabos(List<MeusCabosStruct>? quantidadeCabos) {
  // totalize a coluna quantidade
  if (quantidadeCabos == null || quantidadeCabos.isEmpty) {
    return 0;
  }
  int total = 0;
  for (final cabo in quantidadeCabos) {
    total += cabo.quantidade;
  }
  return total;
}

List<String>? removeLastitem(List<String>? lista) {
  // remova o último item da lista
  if (lista != null && lista.isNotEmpty) {
    lista.removeLast();
  }
  return lista;
}

int? removeForTagambiente(
  int? valor1,
  int? valor2,
) {
  // subtraia os valores
  if (valor1 == null || valor2 == null) {
    return null;
  }
  return valor1 - valor2;
}

int? someDoisValores(
  int? valor1,
  int? valor2,
) {
  // some 2 valores
  if (valor1 == null || valor2 == null) {
    return null;
  }
  return valor1 + valor2;
}

String convertJsonToString(List<dynamic> listaJson) {
  String jsonString = '';

  for (var json in listaJson) {
    jsonString +=
        json.toString() + '\n'; // Adiciona o JSON à string e quebra uma linha
  }

  return jsonString;
}

List<ItensStruct>? newCustomFunction(
  int? oldIndex,
  int? nextIndex,
  List<ItensStruct>? lista,
) {
  // reoder items from list and to ignore the index 0
  if (oldIndex == null || nextIndex == null || lista == null) {
    return null;
  }

  if (oldIndex == 0 || nextIndex == 0) {
    return lista;
  }

  final item = lista.removeAt(oldIndex);
  lista.insert(nextIndex > oldIndex ? nextIndex - 1 : nextIndex, item);

  return lista;
}

List<ItensStruct>? previousOrdenacao(
  int? currentIndex,
  List<ItensStruct>? lista,
) {
  // reorder item from list
  if (currentIndex == null || lista == null || currentIndex >= lista.length) {
    return lista;
  }

  final item = lista[currentIndex];
  lista.removeAt(currentIndex);
  lista.insert(math.max(0, currentIndex - 1), item);
  return lista;
}

int? subtraiaDois(int? valor1) {
  // subtraia valor por 1
  return valor1 != null ? valor1 - 2 : null;
}

List<ItensStruct>? reordenaLastToFirst(List<ItensStruct>? listaItens) {
  // reorder last item to first position
  if (listaItens == null || listaItens.isEmpty) {
    return null;
  }
  final lastItem = listaItens.removeLast();
  listaItens.insert(0, lastItem);
  return listaItens;
}

String? addDataMask(String? data) {
  // format timestamp mask dd/mm/yyyy
  if (data == null) return null;
  final dateTime = DateTime.parse(data);
  final formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(dateTime);
}

List<ItensStruct>? newCustomFunction2(
  List<ItensStruct>? minhaLista,
  ItensStruct? currentItem,
) {
  // reorder item to previous position
  if (minhaLista == null || currentItem == null) {
    return minhaLista;
  }

  final int currentIndex = minhaLista.indexOf(currentItem);
  if (currentIndex <= 0) {
    return minhaLista;
  }

  final List<ItensStruct> newList = List.from(minhaLista);
  final ItensStruct previousItem = newList[currentIndex - 1];
  newList[currentIndex - 1] = currentItem;
  newList[currentIndex] = previousItem;
  return newList;
}
