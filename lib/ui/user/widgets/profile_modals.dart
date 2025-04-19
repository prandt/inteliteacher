import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/shared/widgets/custom_modal.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/ui/user/view_models/profile_viewmodel.dart';

import '../../../model/validators/new_password_validator.dart';

void showUpdateDisplayNameModal(
    BuildContext context, ProfileViewmodel viewmodel) {
  final nameController = TextEditingController(
    text: viewmodel.user?.name,
  );

  void saveName() {
    viewmodel.updateDisplayNameCommand.execute(nameController.text);
    context.pop();
  }

  showDialog(
      context: context,
      builder: (context) =>
          CustomModal(title: 'Atualizar nome', onConfirm: saveName, children: [
            CustomTextField(
              controller: nameController,
              label: 'Nome',
              hint: 'Nome completo',
            ),
          ]));
}

void showUpdatePasswordModal(BuildContext context, ProfileViewmodel viewmodel) {
  final validator = NewPasswordValidator();

  showDialog(
      context: context,
      builder: (context) =>
          CustomModal(title: 'Atualizar senha', children: []));
}
