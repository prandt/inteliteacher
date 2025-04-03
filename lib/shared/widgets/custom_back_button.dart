import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/theme.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.routeName, this.isInfinite = false});

  final String? routeName;
  final bool isInfinite;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: () {
          if (routeName != null) {
            context.go(routeName!);
          }
          context.pop();
        },
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: isInfinite ? MainAxisSize.max : MainAxisSize.min,
          children: [
            Text("Voltar", textAlign: TextAlign.center),
          ],
        ),
        icon: Icon(Icons.arrow_back, color: AppColors.periwinkle));
  }
}
