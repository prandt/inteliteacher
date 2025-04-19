import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/shared/widgets/custom_modal.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/ui/courses/view_models/courses_viewmodel.dart';

void openCreateCourseModal(BuildContext context) {
  final viewModel = injector.get<CoursesViewmodel>();

  void create() {
    viewModel.createCommand.execute();
    context.pop();
  }

  showDialog(
      context: context,
      builder: (context) => ListenableBuilder(
          listenable: viewModel,
          builder: (context, _) {
            return CustomModal(
              onConfirm: viewModel.isCourseNameValid ? create : null,
              title: 'Criar turma',
              confirmText: 'Criar turma',
              children: [
                CustomTextField(
                  label: 'Nome da turma',
                  hint: 'Digite o nome da turma',
                  onChanged: viewModel.setNewCourseName,
                ),
              ],
            );
          }));
}
