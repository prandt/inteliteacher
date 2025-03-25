import 'package:flutter/material.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/home/view_models/home_viewmodel.dart';
import 'package:inteliteacher/ui/home/widgets/home_app_bar.dart';

import '../../../shared/widgets/menu_drawer.dart';
import '../../../shared/widgets/shortcut_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        scaffoldKey: scaffoldKey,
        title: "Inicio",
        padding: const EdgeInsets.all(16),
        enableAppbar: false,
        child: CustomScrollView(
          slivers: [
            HomeAppBar(scaffoldKey: scaffoldKey),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
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
              ),
            ),
            SliverToBoxAdapter(child: Placeholder()),
            SliverToBoxAdapter(child: Placeholder())
          ],
        ));
  }
}
