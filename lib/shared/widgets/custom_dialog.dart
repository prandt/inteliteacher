import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef CustomDialogCallback<T> = void Function(T result);

class CustomDialog {
  static Future<T?> showCustomDialog<T>(
    BuildContext context, {
    required String title,
    required String content,
    CustomDialogCallback<T>? onResult,
    T? okResult,
    T? cancelResult,
    String? cancelText,
    String? okText,
  }) async {
    assert(
      title.isNotEmpty,
      'Title cannot be empty',
    );
    assert(
      content.isNotEmpty,
      'Content cannot be empty',
    );
    if (onResult != null) {
      assert(
        okResult != null,
        'okResult cannot be null if onResult is provided',
      );
      assert(
        cancelResult != null,
        'cancelResult cannot be null if onResult is provided',
      );
    }
    return await showDialog<T>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center),
          backgroundColor: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          content: Text(content, style: Theme.of(context).textTheme.bodyMedium),
          actions: onResult != null
              ? <Widget>[
                  TextButton(
                    child: Text(okText ?? 'OK',
                        style: Theme.of(context).textTheme.labelMedium),
                    onPressed: () => onResult(okResult as T),
                  ),
                  TextButton(
                      child: Text(cancelText ?? 'Cancelar',
                          style: Theme.of(context).textTheme.labelMedium),
                      onPressed: () => onResult(cancelResult as T)),
                ]
              : <Widget>[
                  TextButton(
                    child: Text(okText ?? 'OK',
                        style: Theme.of(context).textTheme.labelMedium),
                    onPressed: () => context.pop(),
                  ),
                ],
        );
      },
    );
  }
}
