import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import '../view_models/class_plans_viewmodel.dart';

void openCreateClassPlansModal(BuildContext context) {
  final viewModel = injector.get<ClassPlansViewmodel>();

  void create() {
    viewModel.generateCommand.execute();
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
            listenable: viewModel,
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
                        onChanged: viewModel.setPrompt,
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
                              onPressed: viewModel.isValid ? create : null,
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

InputBorder _customInputBorder({bool focused = false}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: focused ? AppColors.tropicalIndigo : AppColors.periwinkle,
      width: 1,
    ),
  );
}
