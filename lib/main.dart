import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'config/injector.dart';
import 'firebase_options.dart';
import 'main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupDependencies();
  runApp(const MainApp());
}
