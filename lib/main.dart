import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/helpers/simple_bloc_observer.dart';
import 'senior_code_app.dart';
import 'service_locator.dart';

void main() async {
  // Ensures that the binding is initialized
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().init;
  Bloc.observer = SimpleBlocObserver();

  //  A delay for the splash screen
  await Future.delayed(
    const Duration(seconds: 1),
  );

  runApp(
    const SeniorCodeApp(),
  );
}
