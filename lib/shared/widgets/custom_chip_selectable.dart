import 'package:flutter/material.dart';
import 'package:inteliteacher/config/theme.dart';

class CustomChipSelectable<T> extends StatelessWidget {
  const CustomChipSelectable(
      {super.key,
      required this.label,
      required this.selected,
      required this.onSelected});

  final String label;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: selected
                      ? AppColors.ghostWhite
                      : AppColors.tropicalIndigo,
                )),
        checkmarkColor: AppColors.ghostWhite,
        selected: selected,
        onSelected: onSelected,
        selectedColor: AppColors.tropicalIndigo,
        backgroundColor: AppColors.ghostWhite);
  }
}
