import 'package:inteliteacher/model/entities/activity_response/activity_response_model.dart';
import 'package:inteliteacher/model/entities/student/student_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/entities/course/course_model.dart';

abstract interface class CourseRepository {
  AsyncResult<List<CourseModel>> list();
  AsyncResult<CourseModel> get(String id);
  AsyncResult<CourseModel> create(CreateCourseRequest request);
  AsyncResult<String> delete(String id);
  AsyncResult<List<StudentModel>> listStudents(String courseId);
  AsyncResult<StudentModel> addStudent(CreateStudentRequest request);
  Stream<List<ActivityResponseModel>> listenActivitiesResponses(
      CourseModel model);
}
