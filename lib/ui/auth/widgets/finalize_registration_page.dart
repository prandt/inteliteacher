import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/loading_overlay.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/auth/view_models/finalize_registration_viewmodel.dart';

import '../../../config/router.dart';

class FinalizeRegistrationPage extends StatefulWidget {
  const FinalizeRegistrationPage({super.key});

  @override
  State<FinalizeRegistrationPage> createState() =>
      _FinalizeRegistrationPageState();
}

class _FinalizeRegistrationPageState extends State<FinalizeRegistrationPage> {
  final _viewModel = injector.get<FinalizeRegistrationViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewModel.updateNameCommand.addListener(_listenUpdateName);
  }

  void _listenUpdateName() {
    LoadingOverlay.instance().hide();
    if (_viewModel.updateNameCommand.isRunning) {
      LoadingOverlay.instance().show(context, text: 'Atualizando...');
    }
    if (_viewModel.updateNameCommand.isSuccess) {
      context.go(Routes.home);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _viewModel.updateNameCommand.removeListener(_listenUpdateName);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        hasDrawer: false,
        padding: const EdgeInsets.all(16),
        title: 'Finalizar cadastro',
        child: ListenableBuilder(
            listenable: _viewModel,
            builder: (context, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  CustomTextField(
                      label: 'Nome',
                      hint: 'Digite seu nome',
                      onChanged: _viewModel.updateName,
                      validator: _viewModel.validateName,
                      initialValue: _viewModel.name),
                  ElevatedButton.icon(
                      onPressed: _viewModel.isValid
                          ? _viewModel.updateNameCommand.execute
                          : null,
                      iconAlignment: IconAlignment.end,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Salvar"),
                        ],
                      ),
                      icon: Icon(Icons.check, color: AppColors.ghostWhite)),
                ],
              );
            }));
  }
}
