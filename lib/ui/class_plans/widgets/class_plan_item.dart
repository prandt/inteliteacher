import 'package:flutter/material.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';

import '../../../config/theme.dart';

class ClassPlanItem extends StatelessWidget {
  const ClassPlanItem({super.key, required this.classPlan});

  final SimpleClassPlanResponse classPlan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      title: Text(classPlan.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium),
      onTap: () {},
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.tropicalIndigo),
    );
  }
}
