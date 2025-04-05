import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/course/course_repository.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class CoursesViewmodel extends ChangeNotifier {
  final CourseRepository _courseRepository;
  List<CourseModel> _courses = [];
  List<CourseModel> get courses => _courses;
  String _newCourseName = '';
  bool get isCourseNameValid => _newCourseName.isNotEmpty;

  CoursesViewmodel(this._courseRepository);

  late final Command0 listCommand = Command0(_list);
  late final Command0 createCommand = Command0(_create);
  late final Command1<Unit, String> deleteCommand = Command1(_delete);

  AsyncResult<Unit> _list() =>
      _courseRepository.list().onSuccess(_onListSuccess).pure(unit);

  void _onListSuccess(List<CourseModel> courses) {
    _courses = courses;
    notifyListeners();
  }

  AsyncResult<Unit> _create() => _courseRepository
      .create(CreateCourseRequest(
        name: _newCourseName,
        logo: null,
        tags: [],
      ))
      .onSuccess(_onCreateSuccess)
      .pure(unit);

  void _onCreateSuccess(CourseModel course) {
    _courses.insert(0, course);
    _newCourseName = '';
    notifyListeners();
  }

  void setNewCourseName(String name) {
    _newCourseName = name;
    notifyListeners();
  }

  AsyncResult<Unit> _delete(String courseId) =>
      _courseRepository.delete(courseId).onSuccess(_onDeleteSuccess).pure(unit);

  void _onDeleteSuccess(String courseId) {
    _courses.removeWhere((course) => course.id == courseId);
    notifyListeners();
  }
}
