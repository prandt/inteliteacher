import 'package:flutter/cupertino.dart';
import 'package:lucid_validation/lucid_validation.dart';

export 'package:lucid_validation/lucid_validation.dart';

abstract class CustomValidator<T> extends LucidValidator<T>
    with ChangeNotifier {
  T get entity;

  bool get isValid => validate(entity).isValid;

  String? Function([String?]) field(String key) {
    return byField(entity, key);
  }
}
