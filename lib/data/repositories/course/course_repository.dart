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
}
