import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../execptions/app_exceptions.dart';

class ClassRepositoryRemote implements ClassRepository {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  AsyncResult<ClassModel> create(CreateClassRequest request) async {
    try {
      final model = request.toModel();
      await _courseClassesCollection(model.courseId).doc(model.id).set(model);
      return Success(model);
    } catch (_) {
      return Failure(ClassException('Falha ao criar aula'));
    }
  }

  @override
  AsyncResult<ClassModel> get(
      {required String courseId, required String classId}) async {
    try {
      final doc = await _courseClassesCollection(courseId).doc(classId).get();
      if (!doc.exists) {
        return Failure(ClassException('Aula não encontrada'));
      }
      return Success(doc.data()!);
    } catch (_) {
      return Failure(ClassException('Falha ao buscar aula'));
    }
  }

  @override
  AsyncResult<List<ClassModel>> list(String courseId) async {
    try {
      final querySnapshot = await _courseClassesCollection(courseId)
          .orderBy('startAt', descending: false)
          .get();
      final classes = querySnapshot.docs.map((e) => e.data()).toList();
      return Success(classes);
    } catch (_) {
      return Failure(ClassException('Falha ao listar aulas'));
    }
  }

  CollectionReference<ClassModel> _courseClassesCollection(String id) => _db
      .collection('users')
      .doc(_auth.currentUser?.uid)
      .collection('courses')
      .doc(id)
      .collection('classes')
      .withConverter<ClassModel>(
          fromFirestore: (s, _) => ClassModel.fromJson(s.data()!),
          toFirestore: (activity, _) => activity.toJson());

  @override
  AsyncResult<ClassPlanModel> createClassPlan(CreateClassPlanRequest model) {
    // TODO: implement createClassPlan
    throw UnimplementedError();
  }

  @override
  AsyncResult<ActivityModel> createActivity(
      CreateActivityRequest request) async {
    try {
      final model = request.toModel();
      await _courseClassesCollection(model.courseId)
          .getActivitiesCollection(request.classId)
          .doc(model.id)
          .set(model);
      return Success(model);
    } catch (_) {
      return Failure(ClassException('Falha ao criar atividade'));
    }
  }

  @override
  AsyncResult<List<ActivityModel>> listActivities(ClassModel model) async {
    try {
      final querySnapshot = await _courseClassesCollection(model.courseId)
          .getActivitiesCollection(model.id)
          .orderBy('createdAt', descending: true)
          .get();
      final activities = querySnapshot.docs.map((e) => e.data()).toList();
      return Success(activities);
    } catch (_) {
      return Failure(ClassException('Falha ao listar atividades'));
    }
  }
}

extension on CollectionReference<ClassModel> {
  CollectionReference<ActivityModel> getActivitiesCollection(String id) =>
      doc(id).collection('activities').withConverter<ActivityModel>(
          fromFirestore: (s, _) => ActivityModel.fromJson(s.data()!),
          toFirestore: (activity, _) => activity.toJson());
}
