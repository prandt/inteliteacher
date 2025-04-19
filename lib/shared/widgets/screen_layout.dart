import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/router.dart';
import '../../config/theme.dart';

class ScreenLayout extends StatelessWidget {
  const ScreenLayout(
      {super.key,
      required this.title,
      required this.child,
      this.padding,
      this.enableAppbar = true,
      this.bottomNavigationBar,
      this.showProfileButton = false,
      this.floatingActionButton});

  final String title;
  final Widget child;
  final EdgeInsets? padding;
  final bool enableAppbar;
  final Widget? bottomNavigationBar;
  final bool showProfileButton;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ghostWhite,
      drawerEnableOpenDragGesture: true,
      appBar: enableAppbar
          ? AppBar(
              title:
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
              scrolledUnderElevation: 0,
              centerTitle: true,
              actions: [
                if (showProfileButton)
                  IconButton(
                    onPressed: () => context.go(Routes.profile),
                    icon: const Icon(Icons.person),
                  ),
              ],
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: padding ?? const EdgeInsets.all(0),
          child: child,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      persistentFooterButtons: bottomNavigationBar == null
          ? [
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
            ]
          : null,
    );
  }
}
