import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/course/course_repository.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';


class CoursePageViewmodel extends ChangeNotifier {
  final CourseRepository _courseRepository;
  CourseModel? course;
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;

  late final Command1<Unit, String> loadCommand = Command1(_load);

  CoursePageViewmodel(this._courseRepository);

  AsyncResult<Unit> _load(String id) =>
      _courseRepository.get(id).onSuccess(_setCourse).pure(unit);

  void _setCourse(CourseModel course) {
    this.course = course;
    notifyListeners();
  }

  void setTabIndex(int index) {
    // final model = CreateStudentRequest(name: 'Jose').toModel();
    // debugPrint('StudentModel: $model');
    _tabIndex = index;
    notifyListeners();
  }
}
