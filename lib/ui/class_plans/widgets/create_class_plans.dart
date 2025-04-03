import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/theme.dart';

void openCreateClassPlansModal(BuildContext context) {
  showModalBottomSheet(
      context: context,
      enableDrag: true,
      showDragHandle: true,
      backgroundColor: AppColors.ghostWhite,
      builder: (context) {
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
                TextField(
                  minLines: 5,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Descreva o plano de aula',
                    border: _customInputBorder(),
                    focusedBorder: _customInputBorder(focused: true),
                    enabledBorder: _customInputBorder(),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
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