import 'package:flutter/material.dart';
import 'package:matrix_application/app.dart';
import 'package:matrix_application/core/di/injection.dart';
import 'package:matrix_application/core/storage/hive_initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveInitializer.init();
  await configureDependencies();
  runApp(const App());
}
