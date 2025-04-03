import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/widgets/custom_back_button.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/auth/widgets/logout_button.dart';
import 'package:inteliteacher/ui/user/view_models/profile_viewmodel.dart';

import '../../../config/router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ProfileViewmodel viewModel = injector.get();

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        canPop: false,
        title: "Minha conta",
        onPopInvokedWithResult: (didPop, result) {
          context.go(Routes.home);
        },
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
              LogoutButton(),
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
