import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:result_dart/result_dart.dart';
import 'package:uuid/v4.dart';

import '../../execptions/app_exceptions.dart';
import 'course_repository.dart';

class CourseRepositoryRemote implements CourseRepository {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  AsyncResult<CourseModel> create(CreateCourseRequest request) async {
    try {
      final id = UuidV4().generate();
      final model = CourseModel(
        id: id,
        name: request.name,
        logo: request.logo,
        tags: request.tags,
      );
      await _courseCollection.doc(id).set(model.toJson());
      return Success(model);
    } catch (_) {
      return Failure(CourseException('Falha ao criar turma'));
    }
  }

  @override
  AsyncResult<CourseModel> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  AsyncResult<List<CourseModel>> list() async {
    try {
      final querySnapshot = await _courseCollection
          .withConverter<CourseModel>(
              fromFirestore: (s, _) => CourseModel.fromJson(s.data()!),
              toFirestore: (course, _) => course.toJson())
          .get();
      final courses = querySnapshot.docs.map((e) => e.data()).toList();
      return Success(courses);
    } catch (_) {
      return Failure(CourseException('Falha ao listar turmas'));
    }
  }

  @override
  AsyncResult<String> delete(String id) async {
    try {
      await _courseCollection.doc(id).delete();
      return Success(id);
    } catch (_) {
      return Failure(CourseException('Falha ao excluir turma'));
    }
  }

  CollectionReference get _courseCollection =>
      _db.collection('users').doc(_auth.currentUser?.uid).collection('courses');
}
