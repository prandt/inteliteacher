import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/theme.dart';

class CustomModal extends StatelessWidget {
  const CustomModal(
      {super.key,
      required this.children,
      this.onConfirm,
      this.confirmText = 'Salvar'});

  final List<Widget> children;
  final String confirmText;
  final void Function()? onConfirm;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.ghostWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(mainAxisSize: MainAxisSize.min, spacing: 16, children: [
          ...children,
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onConfirm,
                  child: Text(confirmText),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () => context.pop(),
                  child: Text('Cancelar'),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
