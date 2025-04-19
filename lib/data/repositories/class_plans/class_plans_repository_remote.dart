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
  AsyncResult<List<ClassPlanModel>> list() async {
    try {
      final querySnapshot = await _classPlansCollection.get();
      return Success(_toList(querySnapshot));
    } catch (_) {
      return Failure(ClassPlansException('Falha ao carregar planos de aula'));
    }
  }

  List<ClassPlanModel> _toList(QuerySnapshot<ClassPlanModel> querySnapshot) {
    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  @override
  AsyncResult<ClassPlanModel> getById(String id) async {
    try {
      final doc = await _classPlansCollection.doc(id).get();
      if (!doc.exists) {
        return Failure(ClassPlansException('Plano de aula não encontrado'));
      }
      return Success(doc.data()!);
    } catch (e, s) {
      return Failure(ClassPlansException('Falha ao carregar plano de aula', s));
    }
  }

  @override
  AsyncResult<ClassPlanModel> save(CreateClassPlanRequest request) async {
    try {
      final model = request.toModel();
      await _classPlansCollection.doc(model.id).set(model);
      return Success(model);
    } catch (_, s) {
      return Failure(ClassPlansException('Falha ao salvar plano de aula', s));
    }
  }

  CollectionReference<ClassPlanModel> get _classPlansCollection => _db
      .collection('users')
      .doc(_auth.currentUser?.uid)
      .collection('class_plans')
      .withConverter<ClassPlanModel>(
          fromFirestore: (s, _) => ClassPlanModel.fromJson(s.data()!),
          toFirestore: (classPlan, _) => classPlan.toJson());
}
