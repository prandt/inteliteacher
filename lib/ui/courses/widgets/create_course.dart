import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
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
      builder: (context) {
        return ListenableBuilder(
            listenable: viewModel,
            builder: (context, _) {
              return Dialog(
                backgroundColor: AppColors.ghostWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 16,
                    children: [
                      Text(
                        'Criar turma',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      CustomTextField(
                        label: 'Nome da turma',
                        hint: 'Digite o nome da turma',
                        onChanged: viewModel.setNewCourseName,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed:
                                  viewModel.isCourseNameValid ? create : null,
                              child: Text('Criar turma'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () => context.pop(),
                              child: Text('Cancelar'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            });
      });
}

