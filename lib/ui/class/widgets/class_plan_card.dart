import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:lottie/lottie.dart';
import 'package:result_command/result_command.dart';

import '../../../config/assets.dart';
import '../../../config/injector.dart';
import '../../../model/validators/new_class_plan_validator.dart';
import '../view_models/class_plans_viewmodel.dart';

class ClassPlanCard extends StatefulWidget {
  const ClassPlanCard({super.key, required this.classModel});

  final ClassModel classModel;

  @override
  State<ClassPlanCard> createState() => _ClassPlanCardState();
}

class _ClassPlanCardState extends State<ClassPlanCard> {
  final viewModel = injector.get<ClassPlansViewmodel>();

  @override
  void initState() {
    super.initState();
    viewModel.setClassPlan(widget.classModel.classPlan);
    viewModel.generateCommand.addListener(_listenCreateClassPlan);
  }

  void _listenCreateClassPlan() {
    if (viewModel.generateCommand.isFailure) {
      final error = viewModel.generateCommand.value as FailureCommand;
      // Handle error
    }
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.generateCommand.removeListener(_listenCreateClassPlan);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.periwinkle, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, _) {
            if (viewModel.isCreating) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  Text("Gerando plano de aula...",
                      style: Theme.of(context).textTheme.titleSmall),
                  Lottie.asset(AssetsConstants.aiLoading,
                      width: 48, height: 48),
                ],
              );
            }
            if (viewModel.isCompleted) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  Text("Plano de aula",
                      style: Theme.of(context).textTheme.titleSmall),
                  Text(viewModel.classPlan!.title,
                      style: Theme.of(context).textTheme.bodySmall),
                  ElevatedButton(
                      onPressed: _openClassPlanModal,
                      child: Text("Visualizar")),
                ],
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                Text("Essa aula ainda não possui um plano",
                    style: Theme.of(context).textTheme.titleSmall),
                ElevatedButton(
                    onPressed: _openCreateClassPlansModal,
                    child: Text("Criar com IA"))
              ],
            );
          }),
    );
  }

  void _openCreateClassPlansModal() {
    final validator = NewClassPlanValidator(
        courseId: widget.classModel.courseId, classId: widget.classModel.id);

    void create() {
      viewModel.generateCommand.execute(widget.classModel, validator);
      context.pop();
    }

    showModalBottomSheet(
        context: context,
        enableDrag: true,
        showDragHandle: true,
        isScrollControlled: true,
        backgroundColor: AppColors.ghostWhite,
        builder: (context) {
          return ListenableBuilder(
              listenable: validator,
              builder: (context, _) {
                return Material(
                  color: AppColors.ghostWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 16,
                      children: [
                        Text(
                          'Criar plano de aula',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Descreva um pouco sobre o plano de aula que deseja criar.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        TextFormField(
                          onChanged: validator.setPrompt,
                          validator: validator.field('prompt'),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          minLines: 5,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText:
                                '💡 Descreva o tema ou público-alvo para gerar um plano de aula (ex: \'Aula sobre biomas brasileiros para o 6º ano\').',
                            border: _customInputBorder(),
                            focusedBorder: _customInputBorder(focused: true),
                            enabledBorder: _customInputBorder(),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: validator.isValid ? create : null,
                                child: Text('Gerar com IA'),
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

  void _openClassPlanModal() {
    showModalBottomSheet(
        context: context,
        enableDrag: true,
        showDragHandle: true,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        isScrollControlled: true,
        backgroundColor: AppColors.ghostWhite,
        builder: (context) {
          return SingleChildScrollView(
            child: Material(
              color: AppColors.ghostWhite,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  spacing: 16,
                  children: [
                    Text(
                      viewModel.classPlan!.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Essa aula terá uma duração de ${viewModel.classPlan!.duration} minutos.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    ClassPlanExpansion(title: "Objetivo", children: [
                      Text(
                        viewModel.classPlan!.objective!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ]),
                    ClassPlanExpansion(title: "Metodologia", children: [
                      Text(
                        viewModel.classPlan!.methodology!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ]),
                    ClassPlanExpansion(
                        title: "Recursos",
                        children: viewModel.classPlan!.resources!
                            .map((re) => Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 8,
                                  children: [
                                    const Icon(Icons.check, size: 16),
                                    Expanded(
                                      child: Text(re!,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                    ),
                                  ],
                                ))
                            .toList()),
                    ClassPlanExpansion(
                        title: "Conteúdos",
                        children: viewModel.classPlan!.content!
                            .map((re) => Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 8,
                                  children: [
                                    const Icon(Icons.check, size: 16),
                                    Expanded(
                                      child: Text(re,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                    ),
                                  ],
                                ))
                            .toList()),
                  ],
                ),
              ),
            ),
          );
        });
  }

  InputBorder _customInputBorder({bool focused = false}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: focused ? AppColors.tropicalIndigo : AppColors.periwinkle,
        width: 1,
      ),
    );
  }
}

class ClassPlanExpansion extends StatelessWidget {
  const ClassPlanExpansion(
      {super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.all(0),
      title: Text(title),
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: children,
        )
      ],
    );
  }
}
