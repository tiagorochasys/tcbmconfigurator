// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<ItensStruct>> newCustomAction(
  int? oldIndex,
  List<ItensStruct>? itensSelecionados,
) async {
  // reorderable  app state list
// Define a function that takes in an old index and a list of selected items
// and returns a new list of items with the selected items reordered

  // Create a copy of the original list
  List<ItensStruct> newList = List.from(itensSelecionados!);

  // Remove the selected item from its old position
  ItensStruct removedItem = newList.removeAt(oldIndex!);

  // Add the selected item back to the new position
  newList.insert(oldIndex + 1, removedItem);

  // Return the new list with the reordered items
  return newList;
}
