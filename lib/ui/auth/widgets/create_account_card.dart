import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router.dart';
import '../../../config/theme.dart';

class CreateAccountCard extends StatelessWidget {
  const CreateAccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.periwinkle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      height: 80,
      child: Center(
        child: TextButton(
          onPressed: () => context.push(Routes.register),
          child: Text(
            "Criar conta",
            style: TextStyle(
              color: AppColors.ghostWhite,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
