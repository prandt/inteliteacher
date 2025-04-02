import 'package:flutter/material.dart';

import '../../config/theme.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.keyboardType,
    this.validator,
    this.initialValue,
    this.onChanged,
  });

  final String? initialValue;
  final String label;
  final String hint;
  final bool isPassword;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      onChanged: widget.onChanged,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      obscureText: widget.isPassword ? !_isPasswordVisible : false,
      obscuringCharacter: "*",
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        suffix: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.tropicalIndigo,
                ),
                color: AppColors.tropicalIndigo)
            : null,
      ),
    );
  }
}
