import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String id,
    required String name,
    required String? logo,
    required List<String>? tags,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}

@freezed
abstract class CreateCourseRequest with _$CreateCourseRequest {
  const factory CreateCourseRequest({
    required String name,
    required String? logo,
    required List<String>? tags,
  }) = _CreateCourseRequest;

  factory CreateCourseRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCourseRequestFromJson(json);
}
