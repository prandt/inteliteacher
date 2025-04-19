import 'package:flutter/material.dart';
import 'package:result_command/result_command.dart';

import 'custom_back_button.dart';

class CustomPageChecker extends StatelessWidget {
  const CustomPageChecker(
      {super.key,
      required this.command,
      required this.text,
      required this.child});

  final Command command;
  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: command,
      builder: (context, child) {
        if (command.isFailure) {
          return Material(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 40,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  CustomBackButton(isInfinite: true)
                ],
              ),
            ),
          );
        }
        if (command.isSuccess) {
          return child!;
        }
        return Material(child: const Center(child: CircularProgressIndicator()));
      },
      child: child,
    );
  }
}
