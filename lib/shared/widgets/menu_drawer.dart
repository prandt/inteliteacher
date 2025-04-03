import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/router.dart';
import '../../config/theme.dart';

class MenuDrawerItem {
  final String title;
  final IconData icon;
  final String route;

  MenuDrawerItem({
    required this.title,
    required this.icon,
    required this.route,
  });
}

final _menuDrawerItems = [
  MenuDrawerItem(
    title: "Perfil",
    icon: Icons.person,
    route: Routes.profile,
  ),
  MenuDrawerItem(
    title: "Inicio",
    icon: Icons.home,
    route: Routes.home,
  ),
  MenuDrawerItem(
    title: "Plano de aula",
    icon: Icons.book,
    route: Routes.classPlans,
  ),
];

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("InteliTeacher",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ListView.separated(
                  itemCount: _menuDrawerItems.length,
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Divider(),
                  ),
                  itemBuilder: (context, index) {
                    final item = _menuDrawerItems[index];
                    return ListTile(
                      leading: Icon(item.icon, color: AppColors.tropicalIndigo),
                      title: Text(item.title,
                          style: Theme.of(context).textTheme.titleSmall),
                      onTap: () => context.go(item.route),
                    );
                  },
                ),
              ),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout, color: AppColors.redAlert),
                label: Text("Sair",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.redAlert))),
          ],
        ),
      ),
    );
  }
}
