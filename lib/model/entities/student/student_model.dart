import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
abstract class StudentModel with _$StudentModel {
  const factory StudentModel({
    required String id,
    required String name,
    required String courseId,
    required String email,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}

@freezed
abstract class CreateStudentRequest with _$CreateStudentRequest {
  const factory CreateStudentRequest({
    required String name,
    required String courseId,
    required String email,
  }) = _CreateStudentRequest;
}

extension CreateStudentFactory on CreateStudentRequest {
  /// This a factory method to build a [StudentModel] from a [CreateStudentRequest].
  StudentModel toModel() {
    return StudentModel(
      id: UuidV4().generate(),
      name: name,
      courseId: courseId,
      email: email,
      createdAt: Timestamp.now().toDate(),
      updatedAt: Timestamp.now().toDate(),
    );
  }
}

