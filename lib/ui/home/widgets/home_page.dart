import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';

import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/home/view_models/home_viewmodel.dart';
import 'package:inteliteacher/ui/home/widgets/home_app_bar.dart';

import '../../../shared/widgets/shortcut_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final HomeViewModel viewModel = injector.get();

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        canPop: false,
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
          ],
        ));
  }
}
