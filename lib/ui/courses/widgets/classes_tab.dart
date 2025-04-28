import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/shared/extensions.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';
import 'package:inteliteacher/shared/widgets/custom_modal.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/ui/courses/view_models/course_page_viewmodel.dart';

import '../../../config/router.dart';
import '../../../config/theme.dart';
import '../../../model/validators/new_class_validator.dart';
import '../../../shared/widgets/custom_select_date.dart';
import 'classes_filter.dart';

class ClassesTab extends StatelessWidget {
  const ClassesTab(this._viewmodel, {super.key, required this.courseId});

  final CoursePageViewmodel _viewmodel;
  final String courseId;

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
              'Aulas',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ClassesFilter(_viewmodel),
          if (_viewmodel.classes.isEmpty)
            Expanded(
              child: Center(
                child: Text(
                  'Nenhum aula cadastrada',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            )
          else
            Expanded(
              child: CustomListView(
                  items: _viewmodel.classes,
                  itemBuilder: (context, item) => ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        contentPadding: const EdgeInsets.all(0),
                        title: Text(item.title,
                            style: Theme.of(context).textTheme.titleMedium),
                        subtitle: Text(item.startAt.toFancyDate(),
                            style: Theme.of(context).textTheme.bodyMedium),
                        onTap: () => context.go(Routes.classWithId(courseId, item.id)),
                      )),
            ),
          ElevatedButton.icon(
              onPressed: () => _openNewClassModal(context),
              label: Text('Criar aula'),
              icon: Icon(Icons.add, color: AppColors.ghostWhite, size: 16)),
        ],
      ),
    );
  }

  void _openNewClassModal(BuildContext context) {
    final validator = NewClassValidator();
    final formKey = GlobalKey<FormState>();

    void newClass() {
      if (!formKey.currentState!.validate()) return;
      _viewmodel.addClassCommand.execute(validator);
      context.pop();
    }

    showDialog(
      context: context,
      builder: (context) => Form(
        key: formKey,
        child: ListenableBuilder(
            listenable: validator,
            builder: (context, _) {
              return CustomModal(
                  title: 'Adicionar aula',
                  onConfirm: validator.isValid ? newClass : null,
                  children: [
                    CustomTextField(
                        label: 'Nome',
                        hint: 'Nome da aula',
                        validator: validator.field('title'),
                        onChanged: validator.setTitle),
                    CustomTextField(
                        label: 'Descrição',
                        hint: 'Descrição da aula',
                        onChanged: validator.setDescription),
                    CustomSelectDate(
                      date: validator.startAt,
                      validator: validator.field('startAt'),
                      onDateSelected: validator.setStartAt,
                    )
                  ]);
            }),
      ),
    );
  }
}
