import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:inteliteacher/model/entities/student/student_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../execptions/app_exceptions.dart';
import 'course_repository.dart';

class CourseRepositoryRemote implements CourseRepository {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  AsyncResult<CourseModel> create(CreateCourseRequest request) async {
    try {
      final model = request.toModel();
      await _courseCollection.doc(model.id).set(model.toJson());
      return Success(model);
    } catch (_) {
      return Failure(CourseException('Falha ao criar turma'));
    }
  }

  @override
  AsyncResult<CourseModel> get(String id) async {
    try {
      final doc = await _courseCollection
          .withConverter<CourseModel>(
              fromFirestore: (s, _) => CourseModel.fromJson(s.data()!),
              toFirestore: (course, _) => course.toJson())
          .doc(id)
          .get();
      if (doc.exists) {
        return Success(doc.data()!);
      } else {
        return Failure(CourseException('Turma não encontrada'));
      }
    } catch (_) {
      return Failure(CourseException('Falha ao buscar turma'));
    }
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

  @override
  AsyncResult<StudentModel> addStudent(CreateStudentRequest request) async {
    try {
      if (await _studentAlreadyExists(request.courseId, request.email)) {
        return Failure(CourseException('Aluno já cadastrado na turma'));
      }
      final student = request.toModel();
      await _courseCollection
          .doc(request.courseId)
          .collection('students')
          .doc(student.id)
          .set(student.toJson());
      return Success(student);
    } catch (_) {
      return Failure(CourseException('Falha ao adicionar aluno'));
    }
  }

  Future<bool> _studentAlreadyExists(String courseId, String email) async {
    final doc = await _courseCollection
        .doc(courseId)
        .collection('students')
        .where('email', isEqualTo: email)
        .limit(1)
        .get();
    return doc.docs.isNotEmpty;
  }

  @override
  AsyncResult<List<StudentModel>> listStudents(String courseId) async {
    try {
      final querySnapshot = await _courseCollection
          .doc(courseId)
          .collection('students')
          .withConverter<StudentModel>(
              fromFirestore: (s, _) => StudentModel.fromJson(s.data()!),
              toFirestore: (student, _) => student.toJson())
          .get();
      final students = querySnapshot.docs.map((e) => e.data()).toList();
      return Success(students);
    } catch (_) {
      return Failure(CourseException('Falha ao listar alunos'));
    }
  }

  @override
  AsyncResult<ActivityModel> createActivity(
      CreateActivityRequest request) async {
    try {
      final model = request.toModel();
      await _activitiesCollection(model.courseId).doc(model.id).set(model);
      return Success(model);
    } catch (_) {
      return Failure(CourseException('Falha ao criar atividade'));
    }
  }

  @override
  AsyncResult<List<ActivityModel>> listActivities(String courseId) async {
    try {
      final querySnapshot = await _activitiesCollection(courseId)
          .orderBy('createdAt', descending: true)
          .get();
      final activities = querySnapshot.docs.map((e) => e.data()).toList();
      return Success(activities);
    } catch (_) {
      return Failure(CourseException('Falha ao listar atividades'));
    }
  }

  CollectionReference get _courseCollection =>
      _db.collection('users').doc(_auth.currentUser?.uid).collection('courses');

  CollectionReference<ActivityModel> _activitiesCollection(String id) =>
      _courseCollection
          .doc(id)
          .collection('activities')
          .withConverter<ActivityModel>(
              fromFirestore: (s, _) => ActivityModel.fromJson(s.data()!),
              toFirestore: (activity, _) => activity.toJson());
}
