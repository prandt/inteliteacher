import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ClassViewmodel extends ChangeNotifier {
  ClassModel? _classModel;
  ClassModel? get classModel => _classModel;

  List<ActivityModel> _activities = [];
  List<ActivityModel> get activities => _activities;

  final ClassRepository _classRepository;

  ClassViewmodel(this._classRepository);

  late final Command2<Unit, String, String> getClassCommand =
      Command2(_getClass);

  AsyncResult<Unit> _getClass(String courseId, String classId) =>
      _classRepository
          .get(courseId: courseId, classId: classId)
          .onSuccess(_setClassModel)
          .flatMap(_listActivities)
          .pure(unit);

  void _setClassModel(ClassModel classModel) {
    _classModel = classModel;
    notifyListeners();
  }

  AsyncResult<Unit> _listActivities(ClassModel model) => _classRepository
      .listActivities(model)
      .onSuccess(_setActivities)
      .pure(unit);

  void _setActivities(List<ActivityModel> activities) {
    _activities = activities;
    notifyListeners();
  }
}
