import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router.dart';
import '../../../config/theme.dart';

class ShortcutItem {
  final String title;
  final IconData icon;
  final String route;

  ShortcutItem({
    required this.title,
    required this.icon,
    required this.route,
  });
}

final _shorCutItems = [
  ShortcutItem(
    title: "Plano de aula",
    icon: Icons.library_books,
    route: Routes.classPlans,
  ),
  ShortcutItem(
    title: "Minhas turmas",
    icon: Icons.class_,
    route: Routes.courses,
  ),
];

class HomeShortcuts extends StatelessWidget {
  const HomeShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => ShortcutWidget(
        shortcutItem: _shorCutItems[index],
      ),
      childCount: _shorCutItems.length,
    ));
  }
}

class ShortcutWidget extends StatelessWidget {
  const ShortcutWidget({super.key, required this.shortcutItem});

  final ShortcutItem shortcutItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () => context.go(shortcutItem.route),
        child: Card(
          color: AppColors.periwinkle,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(shortcutItem.icon, color: AppColors.ghostWhite),
                Text(shortcutItem.title,
                    style: TextStyle(color: AppColors.ghostWhite)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
