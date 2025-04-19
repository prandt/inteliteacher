import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:inteliteacher/shared/loading_overlay.dart';
import 'package:inteliteacher/shared/widgets/custom_back_button.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/ui/class_plans/view_models/class_plans_viewmodel.dart';
import 'package:result_command/result_command.dart';

import '../../../shared/widgets/screen_layout.dart';
import 'class_plan_item.dart';
import 'create_class_plans.dart';

class ClassPlansPage extends StatefulWidget {
  const ClassPlansPage({super.key});

  @override
  State<ClassPlansPage> createState() => _ClassPlansPageState();
}

class _ClassPlansPageState extends State<ClassPlansPage> {
  final _viewmodel = injector.get<ClassPlansViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewmodel.generateCommand.addListener(_listenGenerate);
    _viewmodel.listCommand.execute();
  }

  void _listenGenerate() {
    LoadingOverlay.instance().hide();
    if (_viewmodel.generateCommand.isRunning) {
      LoadingOverlay.instance().show(context, text: 'Gerando plano de aula');
    }
    if (_viewmodel.generateCommand.isFailure) {
      final failure = _viewmodel.generateCommand.value as FailureCommand;
      debugPrint("Erro ao gerar plano de aula: ${failure.error}");
    }
    if (_viewmodel.generateCommand.isSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Plano de aula gerado com sucesso!"),
          duration: const Duration(seconds: 4),
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _viewmodel.generateCommand.removeListener(_listenGenerate);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewmodel.listCommand,
      builder: (context, child) => CustomPageChecker(
          command: _viewmodel.listCommand,
          text: "Falha ao carregar planos de aula",
          child: child!),
      child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) {
            return ScreenLayout(
              title: 'Planos de aula',
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 16,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () => openCreateClassPlansModal(context),
                        label: Text("Criar plano de aula"),
                        icon: Icon(Icons.add, color: AppColors.ghostWhite)),
                    Text('Meus planos de aula',
                        style: Theme.of(context).textTheme.titleSmall),
                    if (_viewmodel.classPlans.isNotEmpty)
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: CustomListView<ClassPlanModel>(
                            itemBuilder: (context, classPlan) =>
                                ClassPlanItem(classPlan: classPlan),
                            items: _viewmodel.classPlans),
                      ))
                    else
                      Expanded(
                        child: Center(
                          child: Text(
                            "Nenhum plano de aula cadastrado",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    CustomBackButton(
                      isInfinite: true,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
