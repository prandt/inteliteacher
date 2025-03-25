import 'package:flutter/material.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/home/view_models/home_viewmodel.dart';

import '../../../shared/widgets/shortcut_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        title: "Inicio",
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  ShortcutWidget(
                    title: "Plano de aula",
                    icon: Icons.people,
                    route: "/class-plans",
                  ),
                  ShortcutWidget(
                    title: "Relatórios",
                    icon: Icons.people,
                    route: "/class-plans",
                  ),
                  ShortcutWidget(
                    title: "Plano de aula",
                    icon: Icons.people,
                    route: "/class-plans",
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
