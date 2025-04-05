import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/ui/auth/widgets/logout_button.dart';

import '../../../config/router.dart';
import '../../../config/theme.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () => context.go(Routes.profile),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundColor: AppColors.tropicalIndigo,
            radius: 20,
            child: Icon(
              Icons.person,
              color: AppColors.ghostWhite,
              size: 30,
            ),
          ),
        ),
      ),
      actions: [const LogoutButton(withText: false)],
      centerTitle: false,
      title: Text("$_getGreeting, ${name ?? "Professor"}",
          textAlign: TextAlign.start,
          style: TextStyle(color: AppColors.tropicalIndigo)),
      scrolledUnderElevation: 0,
      pinned: true,
    );
  }

  String get _getGreeting {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return "Bom dia";
    } else if (hour < 18) {
      return "Boa tarde";
    } else {
      return "Boa noite";
    }
  }
}
