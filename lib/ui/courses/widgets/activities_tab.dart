import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/shared/extensions.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';
import 'package:inteliteacher/shared/widgets/custom_modal.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/ui/courses/view_models/course_page_viewmodel.dart';

import '../../../config/theme.dart';
import '../../../model/validators/new_activity_validator.dart';
import '../../../shared/widgets/custom_select_date.dart';
import '../../../shared/widgets/custom_switch.dart';

class ActivitiesTab extends StatelessWidget {
  const ActivitiesTab(this._viewmodel, {super.key});

  final CoursePageViewmodel _viewmodel;

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
              'Atividades',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          if (_viewmodel.activities.isEmpty)
            Expanded(
              child: Center(
                child: Text(
                  'Nenhum atividade cadastrada',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            )
          else
            Expanded(
              child: CustomListView(
                  items: _viewmodel.activities,
                  itemBuilder: (context, item) => ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        contentPadding: const EdgeInsets.all(0),
                        title: Text(item.title,
                            style: Theme.of(context).textTheme.titleMedium),
                        subtitle: Text(item.startAt.toFancyDate(),
                            style: Theme.of(context).textTheme.bodyMedium),
                        trailing: Text('${item.points ?? 'Sem'} pontos',
                            style: Theme.of(context).textTheme.bodySmall),
                      )),
            ),
          ElevatedButton.icon(
              onPressed: () => _openNewActivityModal(context),
              label: Text('Adicionar atividade'),
              icon: Icon(Icons.add, color: AppColors.ghostWhite, size: 16)),
        ],
      ),
    );
  }

  void _openNewActivityModal(BuildContext context) {
    final validator = NewActivityValidator();
    final formKey = GlobalKey<FormState>();

    void newActivity() {
      if (!formKey.currentState!.validate()) return;
      _viewmodel.addActivityCommand.execute(validator);
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
                  title: 'Adicionar atividade',
                  onConfirm: validator.isValid ? newActivity : null,
                  children: [
                    CustomTextField(
                        label: 'Nome',
                        hint: 'Nome da atividade',
                        validator: validator.field('title'),
                        onChanged: validator.setTitle),
                    CustomTextField(
                        label: 'Descrição',
                        hint: 'Descrição da atividade',
                        onChanged: validator.setDescription),
                    CustomSwitch(
                      label: 'Atividade com pontos',
                      value: validator.hasPoints,
                      onChanged: validator.setHasPoints,
                    ),
                    if (validator.hasPoints)
                      CustomTextField(
                          label: 'Pontos',
                          hint: 'Pontos da atividade',
                          validator: validator.field('points'),
                          onChanged: validator.setPoints),
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
