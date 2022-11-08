import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'core/app.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const App(),
  ));
}
