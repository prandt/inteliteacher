import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:result_dart/result_dart.dart';
import 'package:uuid/v4.dart';

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
  AsyncResult<ClassPlanModel> updateClassPlan(
      ClassModel classModel, ClassPlanModel classPlan) async {
    try {
      final classRef =
          _courseClassesCollection(classModel.courseId).doc(classModel.id);

      final classSnapshot = await classRef.get();

      if (!classSnapshot.exists) {
        return Failure(ClassException('Aula não encontrada'));
      }

      await classRef.update({
        "classPlan": classPlan.toJson(),
        "createdAt": Timestamp.now().toDate(),
      });

      return Success(classPlan);
    } catch (e) {
      return Failure(ClassException('Falha ao criar plano de aula'));
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

  @override
  AsyncResult<List<ActivityModel>> addActivities(
      ClassModel model, List<SimpleActivityModel> request) async {
    try {
      final activitiesReference = _courseClassesCollection(model.courseId)
          .getActivitiesCollection(model.id);
      final activities = _buildActivities(request, model);
      final batch = _db.batch();
      for (var activity in activities) {
        final docRef = activitiesReference.doc(activity.id);
        batch.set(docRef, activity);
      }
      await batch.commit();
      return Success(activities);
    } catch (_) {
      return Failure(ClassException('Falha ao adicionar atividades'));
    }
  }

  List<ActivityModel> _buildActivities(
      List<SimpleActivityModel> activities, ClassModel model) {
    return activities
        .map((e) => ActivityModel(
              id: UuidV4().generate(),
              title: e.title,
              description: e.description,
              classId: model.id,
              courseId: model.courseId,
              points: e.points,
              createdAt: Timestamp.now().toDate(),
              updatedAt: Timestamp.now().toDate(),
            ))
        .toList();
  }

  @override
  Stream<List<ActivityModel>> listenActivities(ClassModel model) {
    try {
      return _courseClassesCollection(model.courseId)
          .getActivitiesCollection(model.id)
          .orderBy('createdAt', descending: true)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((e) => e.data()).toList());
    } catch (_) {
      throw ClassException('Falha ao escutar atividades');
    }
  }
}

extension on CollectionReference<ClassModel> {
  CollectionReference<ActivityModel> getActivitiesCollection(String id) =>
      doc(id).collection('activities').withConverter<ActivityModel>(
          fromFirestore: (s, _) => ActivityModel.fromJson(s.data()!),
          toFirestore: (activity, _) => activity.toJson());
}
