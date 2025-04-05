import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/injector.dart';
import '../../../config/router.dart';
import '../../../config/theme.dart';
import '../../../shared/widgets/custom_dialog.dart';
import '../view_models/logout_viewmodel.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key, this.withText = true});

  final bool withText;

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  final LogoutViewmodel viewModel = injector.get();

  @override
  void initState() {
    super.initState();
    viewModel.logout.addListener(_listenLogout);
  }

  void _listenLogout() {
    if (viewModel.logout.isSuccess) {
      context.go(Routes.login);
    }
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.logout.removeListener(_listenLogout);
  }

  @override
  Widget build(BuildContext context) {
    return widget.withText
        ? TextButton.icon(
            onPressed: _logout,
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.logout, color: AppColors.redAlert),
            label: Text("Sair",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.redAlert)))
        : TextButton(
            onPressed: _logout,
            iconAlignment: IconAlignment.start,
            child: const Icon(Icons.logout, color: AppColors.redAlert),
          );
  }

  void _logout() {
    CustomDialog.showCustomDialog<bool>(context,
        title: "Sair",
        content: "Você tem certeza que deseja sair?",
        okResult: true,
        cancelResult: false,
        okText: "Sim", onResult: (result) {
      if (result) {
        viewModel.logout.execute();
      }
      context.pop();
    });
  }
}
