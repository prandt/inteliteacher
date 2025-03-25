import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  runApp(const MainApp());
}
