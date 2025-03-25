import 'package:flutter/material.dart';

import 'config/router.dart';
import 'config/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: themeData,
      title: "InteliTeacher",
      debugShowCheckedModeBanner: false,
    );
  }
}
