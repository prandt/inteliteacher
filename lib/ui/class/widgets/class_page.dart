import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/shared/loading_overlay.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/ui/class/view_models/class_viewmodel.dart';
import 'package:inteliteacher/ui/class/widgets/class_plan_card.dart';

import '../../../config/theme.dart';
import '../../../model/validators/new_activity_validator.dart';
import '../../../shared/widgets/custom_modal.dart';
import '../../../shared/widgets/custom_switch.dart';
import '../../../shared/widgets/custom_text_field.dart';
import '../../../shared/widgets/screen_layout.dart';
import 'class_activities_list.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key, required this.courseId, required this.classId});

  final String courseId;
  final String classId;

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  final _viewmodel = injector.get<ClassViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewmodel.getClassCommand.execute(
      widget.courseId,
      widget.classId,
    );
    _viewmodel.createActivityCommand.addListener(_listenCreateActivity);
  }

  void _listenCreateActivity() {
    LoadingOverlay.instance().hide();
    if (_viewmodel.createActivityCommand.isRunning) {
      LoadingOverlay.instance().show(context, text: 'Criando atividade');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _viewmodel.createActivityCommand.removeListener(_listenCreateActivity);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPageChecker(
      command: _viewmodel.getClassCommand,
      text: 'Não foi possível carregar a aula',
      child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) {
            return ScreenLayout(
              title: _viewmodel.classModel?.title ?? '',
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: 16,
                  children: [
                    ClassPlanCard(
                        classPlanModel: _viewmodel.classModel?.classPlan),
                    Text(" Atividades",
                        style: Theme.of(context).textTheme.titleLarge),
                    ClassActivitiesList(_viewmodel.activities),
                    ElevatedButton.icon(
                        onPressed: _openNewClassModal,
                        label: Text('Adicionar atividade'),
                        icon:
                            const Icon(Icons.add, color: AppColors.ghostWhite)),
                  ],
                ),
              ),
            );
          }),
    );
  }

  void _openNewClassModal() {
    final validator = NewActivityValidator(
        classId: widget.classId, courseId: widget.courseId);
    final formKey = GlobalKey<FormState>();

    void newActivity() {
      if (!formKey.currentState!.validate()) return;
      _viewmodel.createActivityCommand.execute(validator);
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
                  ]);
            }),
      ),
    );
  }
}
