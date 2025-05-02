import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/model/entities/activity_response/activity_response_model.dart';
import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:inteliteacher/model/validators/new_response_validator.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/use_cases/class/load_students_usecase.dart';

class ClassViewmodel extends ChangeNotifier {
  ClassModel? _classModel;
  ClassModel? get classModel => _classModel;

  List<ActivityModel> _activities = [];
  List<ActivityModel> get activities => _activities;

  StreamSubscription? _activitiesSubscription;

  final ClassRepository _classRepository;
  final LoadStudentsUseCase _loadStudentsUseCase;

  List<StudentWithResponse> _students = [];
  List<StudentWithResponse> get students => _students;

  ClassViewmodel(this._classRepository, this._loadStudentsUseCase);

  late final Command2<Unit, String, String> getClassCommand =
      Command2(_getClass);
  late final Command1<Unit, ActivityModel> loadStudentsCommand =
      Command1(_loadStudents);
  late final Command1<Unit, NewResponseValidator> addStudentResponseCommand =
      Command1(_addStudentResponse);

  AsyncResult<Unit> _getClass(String courseId, String classId) =>
      _classRepository
          .get(courseId: courseId, classId: classId)
          .onSuccess(_setClassModel)
          .pure(unit);

  void _setClassModel(ClassModel classModel) {
    _classModel = classModel;
    _listenActivities(classModel);
    notifyListeners();
  }

  void _listenActivities(ClassModel model) {
    _activitiesSubscription?.cancel();
    _activitiesSubscription =
        _classRepository.listenActivities(model).listen(_setActivities);
  }

  void _setActivities(List<ActivityModel> activities) {
    _activities = activities;
    notifyListeners();
  }

  AsyncResult<Unit> _loadStudents(ActivityModel activityModel) =>
      _loadStudentsUseCase
          .call(activityModel, classModel)
          .onSuccess(_setStudents)
          .pure(unit);

  void _setStudents(List<StudentWithResponse> students) {
    _students = students;
    notifyListeners();
  }

  AsyncResult<Unit> _addStudentResponse(NewResponseValidator validator) =>
      _classRepository.addStudentResponse(validator).pure(unit);

  @override
  void dispose() {
    super.dispose();
    _activitiesSubscription?.cancel();
  }
}
