import 'package:flutter/material.dart';

import 'senior_code_app.dart';
import 'service_locator.dart';

void main() async {
  // Ensures that the binding is initialized
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().init;

  //  A delay for the splash screen
  await Future.delayed(
    const Duration(seconds: 5),
  );

  runApp(
    const SeniorCodeApp(),
  );
}
