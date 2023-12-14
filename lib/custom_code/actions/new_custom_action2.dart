// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ui' as ui;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> newCustomAction2(String? referenceWidget) async {
  // save widget as image
  // Import necessary packages

  // Define the function to save widget as image
  Future<String> saveWidgetAsImage(GlobalKey key) async {
    // Get the render object of the widget
    RenderRepaintBoundary boundary =
        key.currentContext!.findRenderObject() as RenderRepaintBoundary;

    // Convert the render object to an image
    ui.Image image = await boundary.toImage(pixelRatio: 3.0);

    // Get the directory to save the image
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path;

    // Create a file with a unique name
    String fileName = DateTime.now().millisecondsSinceEpoch.toString() + '.png';
    File file = File('$path/$fileName');

    // Convert the image to bytes and write to the file
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    await file.writeAsBytes(byteData.buffer.asUint8List());

    // Return the path of the saved image
    return file.path;
  }
}
