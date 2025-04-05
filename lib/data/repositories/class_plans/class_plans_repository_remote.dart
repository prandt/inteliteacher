import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteliteacher/data/repositories/class_plans/class_plans_repository.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../execptions/app_exceptions.dart';

class ClassPlansRepositoryRemote implements ClassPlansRepository {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  AsyncResult<List<SimpleClassPlanResponse>> list() async {
    try {
      final querySnapshot = await _classPlansCollection.get();
      final list = querySnapshot.docs
          .map((doc) =>
              SimpleClassPlanResponse(id: doc.id, title: doc.get('title')))
          .toList();
      return Success(list);
    } catch (_) {
      return Failure(ClassPlansException('Falha ao carregar planos de aula'));
    }
  }

  CollectionReference get _classPlansCollection => _db
      .collection('users')
      .doc(_auth.currentUser?.uid)
      .collection('class_plans');

  @override
  AsyncResult<Unit> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  AsyncResult<SimpleClassPlanResponse> save(
      CreateClassPlanRequest model) async {
    try {
      final response = await _classPlansCollection.add(model.toJson());
      final newDoc =
          SimpleClassPlanResponse(id: response.id, title: model.title);
      return Success(newDoc);
    } catch (_, s) {
      return Failure(ClassPlansException('Falha ao salvar plano de aula', s));
    }
  }
}
