import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/data/repositories/course/course_repository.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../entities/activity_response/activity_response_model.dart';
import '../../entities/class/class_model.dart';
import '../../entities/student/student_model.dart';

class LoadStudentsUseCase extends ChangeNotifier {
  final CourseRepository _courseRepository;
  final ClassRepository _classRepository;

  LoadStudentsUseCase(this._courseRepository, this._classRepository);

  AsyncResult<List<StudentWithResponse>> call(
      ActivityModel activityModel, ClassModel? classModel) async {
    if (classModel == null) {
      return Failure(Exception('ClassModel is null'));
    }
    final students = await _courseRepository.listStudents(classModel.courseId);
    final responses = await _classRepository.listResponses(activityModel);

    if (students.isError() || responses.isError()) {
      return Failure(Exception('Failed to load students or responses'));
    }

    final studentsResult = students.getOrNull() ?? [];
    final responsesResult = responses.getOrNull() ?? [];

    final studentsWithResponses = _mapStudentsWithResponses(
      studentsResult,
      responsesResult,
    );

    return Success(studentsWithResponses);
  }

  List<StudentWithResponse> _mapStudentsWithResponses(
      List<StudentModel> students, List<ActivityResponseModel> responses) {
    return students.map((student) {
      final searchResponses = responses.where(
        (response) => response.studentId == student.id,
      );
      ActivityResponseModel? response;

      if (searchResponses.isNotEmpty) {
        response = searchResponses.first;
      }

      return StudentWithResponse(student: student, activityResponse: response);
    }).toList();
  }
}
