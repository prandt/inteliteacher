import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/model/validators/new_response_validator.dart';
import 'package:inteliteacher/shared/extensions.dart';
import 'package:inteliteacher/shared/loading_overlay.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/ui/class/view_models/class_viewmodel.dart';
import 'package:inteliteacher/ui/class/widgets/class_plan_card.dart';
import '../../../model/entities/activity/activity_model.dart';
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
    _viewmodel.addStudentResponseCommand.addListener(_listenAddResponse);
  }

  void _listenAddResponse() {
    LoadingOverlay.instance().hide();
    if (_viewmodel.addStudentResponseCommand.isRunning) {
      LoadingOverlay.instance().show(context, text: 'Salvando resposta');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _viewmodel.addStudentResponseCommand.removeListener(_listenAddResponse);
    _viewmodel.dispose();
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
                    ClassPlanCard(classModel: _viewmodel.classModel!),
                    Text("Atividades",
                        style: Theme.of(context).textTheme.titleLarge),
                    ClassActivitiesList(_viewmodel.activities,
                        onActivityOpen: _showActivity),
                  ],
                ),
              ),
            );
          }),
    );
  }

  void _showActivity(ActivityModel activity) {
    _viewmodel.loadStudentsCommand.execute(activity);
    showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.ghostWhite,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        builder: (context) => Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                spacing: 16,
                children: [
                  Text(activity.title,
                      style: Theme.of(context).textTheme.titleMedium),
                  ExpansionTile(
                      tilePadding: const EdgeInsets.all(0),
                      title: Text("Ver descrição"),
                      childrenPadding: const EdgeInsets.all(16),
                      children: [Text(activity.description)]),
                  Text("Alunos", style: Theme.of(context).textTheme.bodySmall),
                  ListenableBuilder(
                      listenable: _viewmodel.loadStudentsCommand,
                      builder: (context, _) {
                        if (_viewmodel.loadStudentsCommand.isRunning) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        if (_viewmodel.loadStudentsCommand.isSuccess) {
                          return Expanded(
                            child: CustomListView(
                                items: _viewmodel.students,
                                itemBuilder: (context, item) {
                                  final validator = NewResponseValidator(
                                      student: item.student,
                                      activity: activity);
                                  return ListenableBuilder(
                                      listenable: validator,
                                      builder: (context, _) {
                                        return ExpansionTile(
                                          tilePadding: const EdgeInsets.all(0),
                                          leading: CircleAvatar(
                                            backgroundColor:
                                                AppColors.periwinkle,
                                            radius: 18,
                                            child: Text(
                                                item.student.name
                                                    .toAvatarAcronyms(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineSmall
                                                    ?.copyWith(
                                                      color:
                                                          AppColors.ghostWhite,
                                                    )),
                                          ),
                                          title: Text(item.student.name),
                                          childrenPadding:
                                              const EdgeInsets.all(16),
                                          children: [
                                            CustomTextField(
                                                label: 'Pontos',
                                                validator:
                                                    validator.field('points'),
                                                onChanged: validator.setPoints,
                                                hint: 'Digite a nota do aluno'),
                                            const SizedBox(height: 16),
                                            ElevatedButton(
                                                onPressed: validator.isValid
                                                    ? () => _viewmodel
                                                        .addStudentResponseCommand
                                                        .execute(validator)
                                                    : null,
                                                child: Text('Salvar')),
                                          ],
                                        );
                                      });
                                }),
                          );
                        }
                        return Container();
                      })
                ],
              ),
            ));
  }
}
