import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/loading_overlay.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/auth/widgets/logout_button.dart';
import 'package:inteliteacher/ui/user/view_models/profile_viewmodel.dart';
import 'package:inteliteacher/ui/user/widgets/profile_modals.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ProfileViewmodel _viewModel = injector.get();

  @override
  void initState() {
    super.initState();
    _viewModel.getUserCommand.execute();
    _viewModel.updateDisplayNameCommand.addListener(_listenUpdateName);
  }

  void _listenUpdateName() {
    LoadingOverlay.instance().hide();
    if (_viewModel.updateDisplayNameCommand.isRunning) {
      LoadingOverlay.instance().show(context, text: 'Atualizando nome');
      return;
    }
    if (_viewModel.updateDisplayNameCommand.isSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text("Nome atualizado com sucesso", textAlign: TextAlign.center),
          duration: const Duration(seconds: 4),
        ),
      );
      return;
    }
    if (_viewModel.updateDisplayNameCommand.isFailure) {
      return;
    }
  }

  // void _listenUpdatePassword() {}

  @override
  void dispose() {
    super.dispose();
    _viewModel.updateDisplayNameCommand.removeListener(_listenUpdateName);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPageChecker(
      command: _viewModel.getUserCommand,
      text: 'Usuario não encontrado',
      child: ListenableBuilder(
          listenable: _viewModel,
          builder: (context, _) {
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
                      TextButton.icon(
                        label: Text(
                          _viewModel.user?.name ?? '',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        iconAlignment: IconAlignment.end,
                        icon: Icon(Icons.edit, size: 16),
                        onPressed: () =>
                            showUpdateDisplayNameModal(context, _viewModel),
                      ),
                      // OutlinedButton.icon(
                      //     onPressed: () =>
                      //         showUpdatePasswordModal(context, _viewModel),
                      //     icon: Icon(Icons.password,
                      //         color: AppColors.tropicalIndigo),
                      //     label: Text('Alterar senha')),
                      const Spacer(),
                      LogoutButton(),
                    ],
                  ),
                ));
          }),
    );
  }
}
