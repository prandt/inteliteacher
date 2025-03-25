import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/theme.dart';

class ShortcutWidget extends StatelessWidget {
  const ShortcutWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.route});

  final String title;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(route),
      child: Card(
        color: AppColors.periwinkle,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(icon, color: AppColors.ghostWhite),
              Text(title, style: TextStyle(color: AppColors.ghostWhite)),
            ],
          ),
        ),
      ),
    );
  }
}
