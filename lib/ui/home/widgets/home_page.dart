import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';

import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/home/view_models/home_viewmodel.dart';
import 'package:inteliteacher/ui/home/widgets/home_app_bar.dart';

import '../../../shared/widgets/sliver_sizedbox.dart';
import 'home_shortcuts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _viewModel = injector.get<HomeViewModel>();

  @override
  initState() {
    super.initState();
    _viewModel.loadCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: _viewModel,
        builder: (context, _) {
          return ScreenLayout(
              title: "Inicio",
              padding: const EdgeInsets.all(16),
              enableAppbar: false,
              child: CustomScrollView(
                slivers: [
                  HomeAppBar(name: _viewModel.user?.name?.split(' ').first),
                  const SliverSizedBox(height: 16),
                  const HomeShortcuts(),
                ],
              ));
        });
  }
}
