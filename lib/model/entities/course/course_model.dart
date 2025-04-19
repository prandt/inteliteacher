import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

import '../../../shared/json_timestamp.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String id,
    required String name,
    required String? logo,
    required List<String>? tags,
    @JsonTimestamp() required DateTime createdAt,
    @JsonTimestamp() required DateTime updatedAt,
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

extension CreateCourseFactory on CreateCourseRequest {
  CourseModel toModel() {
    return CourseModel(
      id: UuidV4().generate(),
      name: name,
      logo: logo,
      tags: tags,
      createdAt: Timestamp.now().toDate(),
      updatedAt: Timestamp.now().toDate(),
    );
  }
}