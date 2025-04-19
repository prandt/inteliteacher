import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key,
      required this.value,
      required this.onChanged,
      this.validator,
      this.label});

  final String? label;
  final bool value;
  final ValueChanged<bool> onChanged;
  final FormFieldValidator<bool>? validator;

  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      builder: (builder) => Row(
        spacing: 8,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (label != null) Text(label!),
          Switch(
            value: value,
            onChanged: onChanged,
            padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
