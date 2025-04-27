import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/data/repositories/course/course_repository.dart';
import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:inteliteacher/model/entities/student/student_model.dart';
import 'package:inteliteacher/model/validators/new_class_validator.dart';
import 'package:inteliteacher/ui/courses/widgets/classes_filter.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/validators/create_student_validator.dart';

class CoursePageViewmodel extends ChangeNotifier {
  final CourseRepository _courseRepository;
  final ClassRepository _classRepository;

  CourseModel? course;

  final List<StudentModel> _students = [];
  List<StudentModel> get students => _students;

  final List<ClassModel> _classes = [];
  List<ClassModel> get classes => _classFilter == ClassFilterEnum.all
      ? _classes
      : _classes.where(_isToday).toList();

  int _tabIndex = 0;
  int get tabIndex => _tabIndex;

  ClassFilterEnum _classFilter = ClassFilterEnum.all;
  ClassFilterEnum get classFilter => _classFilter;

  late final Command1<Unit, String> loadCommand = Command1(_load);
  late final Command1<Unit, CreateStudentValidator> addStudentCommand =
      Command1(_addStudent);
  late final Command1<Unit, NewClassValidator> addClassCommand =
      Command1(_addClass);

  CoursePageViewmodel(this._courseRepository, this._classRepository);

  AsyncResult<Unit> _load(String id) => _courseRepository
      .get(id)
      .onSuccess(_setCourse)
      .flatMap(_loadClasses)
      .flatMap(_loadStudents);

  AsyncResult<CourseModel> _loadClasses(CourseModel course) =>
      _classRepository.list(course.id).onSuccess(_setClasses).pure(course);

  AsyncResult<Unit> _loadStudents(CourseModel course) => _courseRepository
      .listStudents(course.id)
      .onSuccess(_setStudents)
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

  AsyncResult<Unit> _addClass(NewClassValidator validator) => _classRepository
      .create(validator.toRequest(course!.id))
      .onSuccess(_onAddClassSuccess)
      .pure(unit);

  void _onAddClassSuccess(ClassModel model) {
    _classes.add(model);
    _sortClasses();
    notifyListeners();
  }

  void _sortClasses() {
    _classes.sort((a, b) => a.startAt.compareTo(b.startAt));
  }

  void _setClasses(List<ClassModel> classes) {
    _classes.clear();
    _classes.addAll(classes);
    notifyListeners();
  }

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

  void setClassFilter(ClassFilterEnum filter) {
    _classFilter = filter;
    notifyListeners();
  }

  bool _isToday(ClassModel classModel) {
    final today = DateTime.now();
    return classModel.startAt.year == today.year &&
        classModel.startAt.month == today.month &&
        classModel.startAt.day == today.day;
  }
}
