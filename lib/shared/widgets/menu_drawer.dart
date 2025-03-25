import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/router.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: const Icon(Icons.person),
            ),
            title: const Text("Minha conta"),
            onTap: () => context.go(Routes.profile),
          ),
          const Divider(),
          ListTile(
              title: const Text("Inicio"),
              onTap: () => context.go(Routes.home)
          ),
          ListTile(
            title: const Text("Plano de aula"),
            onTap: () => context.go(Routes.classPlans),
          ),
        ],
      ),
    );
  }
}
