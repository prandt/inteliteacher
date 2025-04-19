import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/model/validators/create_student_validator.dart';
import 'package:inteliteacher/shared/extensions.dart';
import 'package:inteliteacher/shared/widgets/custom_modal.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';

import '../../../config/theme.dart';
import '../../../shared/widgets/custom_list_view.dart';
import '../view_models/course_page_viewmodel.dart';

class StudentsTab extends StatefulWidget {
  const StudentsTab(this._viewmodel, {super.key});

  final CoursePageViewmodel _viewmodel;

  @override
  State<StudentsTab> createState() => _StudentsTabState();
}

class _StudentsTabState extends State<StudentsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          Center(
            child: Text(
              'Alunos',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          if (widget._viewmodel.students.isEmpty)
            Expanded(
              child: Center(
                child: Text(
                  'Nenhum aluno cadastrado',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            )
          else
            Expanded(
                child: CustomListView(
              items: widget._viewmodel.students,
              itemBuilder: (context, item) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: AppColors.periwinkle,
                    child: Text(item.name.toAvatarAcronyms(),
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: AppColors.ghostWhite,
                                )),
                  ),
                  title: Text(item.name,
                      style: Theme.of(context).textTheme.titleMedium),
                  subtitle: Text(item.email,
                      style: Theme.of(context).textTheme.bodyMedium),
                );
              },
            )),
          ElevatedButton.icon(
              onPressed: _showCreateStudentModel,
              label: Text('Adicionar aluno'),
              icon: Icon(Icons.person_add_alt_1,
                  color: AppColors.ghostWhite, size: 16)),
        ],
      ),
    );
  }

  void _showCreateStudentModel() {
    final validator = CreateStudentValidator();

    void addStudent() {
      widget._viewmodel.addStudentCommand.execute(validator);
      context.pop();
    }

    showDialog(
        context: context,
        builder: (context) => ListenableBuilder(
            listenable: validator,
            builder: (context, _) {
              return CustomModal(
                  onConfirm: validator.isValid ? addStudent : null,
                  title: 'Adicionar aluno',
                  children: [
                    CustomTextField(
                        label: 'Nome',
                        hint: 'Digite o nome',
                        onChanged: validator.setName,
                        validator: validator.field('name')),
                    CustomTextField(
                        label: 'E-mail',
                        hint: 'Digite o e-mail',
                        onChanged: validator.setEmail,
                        validator: validator.field('email')),
                  ]);
            }));
  }
}
