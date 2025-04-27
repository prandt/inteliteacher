import 'package:flutter/material.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';

class ClassPlanCard extends StatelessWidget {
  const ClassPlanCard({super.key, required this.classPlanModel});

  final ClassPlanModel? classPlanModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.periwinkle, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Text("Essa aula ainda não possui um plano",
              style: Theme.of(context).textTheme.titleSmall),
          ElevatedButton(onPressed: () {}, child: Text("Criar com IA"))
        ],
      ),
    );
  }
}
