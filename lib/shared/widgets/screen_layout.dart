import 'package:flutter/material.dart';

import 'menu_drawer.dart';

class ScreenLayout extends StatelessWidget {
  const ScreenLayout(
      {super.key, required this.title, required this.child, this.padding});

  final String title;
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: child,
      ),
    );
  }
}
