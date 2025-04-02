import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/user/view_models/profile_viewmodel.dart';

import '../../../config/router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.viewModel});

  final ProfileViewmodel viewModel;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    super.initState();
    widget.viewModel.logout.addListener(_listenLogout);
  }

  void _listenLogout() {
    if (widget.viewModel.logout.isSuccess) {
      context.go(Routes.login);
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.viewModel.logout.removeListener(_listenLogout);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        title: "Minha conta",
        padding: AppPadding.allMedium,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
              ),
              Text("Nome do usuário"),
              TextButton(
                  onPressed: widget.viewModel.logout.execute,
                  child: Text("Sair"))
            ],
          ),
        ));
  }
}
