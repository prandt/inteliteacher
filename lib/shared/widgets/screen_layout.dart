import 'package:flutter/material.dart';

import '../../config/theme.dart';
import 'menu_drawer.dart';

class ScreenLayout extends StatelessWidget {
  const ScreenLayout(
      {super.key,
      required this.title,
      required this.child,
      this.padding,
      this.enableAppbar = true,
      this.scaffoldKey});

  final String title;
  final Widget child;
  final EdgeInsets? padding;
  final bool enableAppbar;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.ghostWhite,
      drawer: const MenuDrawer(),
      drawerEnableOpenDragGesture: true,
      appBar: enableAppbar
          ? AppBar(
              title: Text(title),
              centerTitle: true,
            )
          : null,
      body: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: child,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
