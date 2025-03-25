import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_model.g.dart';
part 'auth_user_model.freezed.dart';

@freezed
sealed class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel(
      {required String id,
      required String? email,
      required String? name}) = _AuthUserModel;

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json);
}
