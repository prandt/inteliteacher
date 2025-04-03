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
      this.scaffoldKey,
      this.canPop = true,
      this.onPopInvokedWithResult});

  final String title;
  final Widget child;
  final EdgeInsets? padding;
  final bool enableAppbar;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final bool canPop;
  final PopInvokedWithResultCallback? onPopInvokedWithResult;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: onPopInvokedWithResult,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.ghostWhite,
        drawer: const MenuDrawer(),
        drawerEnableOpenDragGesture: true,
        appBar: enableAppbar
            ? AppBar(
                title:
                    Text(title, style: Theme.of(context).textTheme.titleMedium),
                scrolledUnderElevation: 0,
                centerTitle: true,
              )
            : null,
        body: SafeArea(
          child: Padding(
            padding: padding ?? const EdgeInsets.all(0),
            child: child,
          ),
        ),
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                "Versão 1.0.0",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
