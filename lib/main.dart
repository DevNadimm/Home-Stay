import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:home_stay/app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}
