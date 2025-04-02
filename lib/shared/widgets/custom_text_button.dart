import 'package:flutter/material.dart';

import '../../config/theme.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.label, this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.periwinkle,
          fontSize: 16,
        ),
      ),
    );
  }
}
