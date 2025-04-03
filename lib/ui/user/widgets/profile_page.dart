import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/widgets/custom_back_button.dart';
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
            spacing: 16,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
              ),
              Text(
                "Nome do usuário",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 16),
              // UserActionButton(
              //   title: 'Alterar nome',
              //   icon: Icons.person,
              // ),
              // UserActionButton(
              //   title: 'Alterar senha',
              //   icon: Icons.password,
              // ),
              TextButton.icon(
                  onPressed: widget.viewModel.logout.execute,
                  icon: const Icon(Icons.logout, color: AppColors.redAlert),
                  label: Text("Sair",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: AppColors.redAlert))),
              const Spacer(),
              CustomBackButton(
                isInfinite: true,
                routeName: Routes.home,
              )
            ],
          ),
        ));
  }
}

class UserActionButton extends StatelessWidget {
  const UserActionButton({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: AppColors.tropicalIndigo),
        label: Text(title));
  }
}
