import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/course/course_repository.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:inteliteacher/model/entities/student/student_model.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/validators/create_student_validator.dart';

class CoursePageViewmodel extends ChangeNotifier {
  final CourseRepository _courseRepository;
  CourseModel? course;
  final List<StudentModel> _students = [];
  List<StudentModel> get students => _students;
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;

  late final Command1<Unit, String> loadCommand = Command1(_load);
  late final Command1<Unit, CreateStudentValidator> addStudentCommand =
      Command1(_addStudent);

  CoursePageViewmodel(this._courseRepository);

  AsyncResult<Unit> _load(String id) => _courseRepository
      .get(id)
      .onSuccess(_setCourse)
      .flatMap(_loadStudents)
      .pure(unit);

  AsyncResult<Unit> _addStudent(CreateStudentValidator validator) =>
      _courseRepository
          .addStudent(validator.toRequest(course!.id))
          .onSuccess(_onAddStudentSuccess)
          .pure(unit);

  void _onAddStudentSuccess(StudentModel model) {
    _students.insert(0, model);
    notifyListeners();
  }

  AsyncResult<Unit> _loadStudents(CourseModel course) => _courseRepository
      .listStudents(course.id)
      .onSuccess(_setStudents)
      .pure(unit);

  void _setStudents(List<StudentModel> students) {
    _students.clear();
    _students.addAll(students);
    notifyListeners();
  }

  void _setCourse(CourseModel course) {
    this.course = course;
    notifyListeners();
  }

  void setTabIndex(int index) {
    _tabIndex = index;
    notifyListeners();
  }
}
