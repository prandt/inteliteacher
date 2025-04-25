import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:result_dart/result_dart.dart';

import 'package:inteliteacher/data/repositories/course/course_repository.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';

import 'course_repository_test.mocks.dart';

@GenerateMocks([CourseRepository])
void main() {
  group('CourseRepository', () {
    late MockCourseRepository mockCourseRepository;
    final dummyCourse = CourseModel(
        id: '1',
        name: 'Math',
        logo: '',
        tags: [],
        createdAt: DateTime(2025),
        updatedAt: DateTime(2025));
    final dummyCourseList = [dummyCourse];
    const dummyCourseId = '1';
    const dummyString = 'Success';

    setUp(() {
      mockCourseRepository = MockCourseRepository();
    });

    setUpAll(() {
      provideDummy<ResultDart<List<CourseModel>, Exception>>(
          Success(dummyCourseList));
      provideDummy<ResultDart<CourseModel, Exception>>(Success(dummyCourse));
      provideDummy<ResultDart<String, Exception>>(Success(dummyString));
    });

    test('list deve retornar uma lista de CourseModel em caso de sucesso',
        () async {
      when(mockCourseRepository.list())
          .thenAnswer((_) async => Success(dummyCourseList));

      final result = await mockCourseRepository.list();

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), equals(dummyCourseList));
    });

    test('get deve retornar um CourseModel em caso de sucesso', () async {
      when(mockCourseRepository.get(dummyCourseId))
          .thenAnswer((_) async => Success(dummyCourse));

      final result = await mockCourseRepository.get(dummyCourseId);

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), equals(dummyCourse));
    });

    test('create deve retornar um CourseModel em caso de sucesso', () async {
      final createRequest =
          CreateCourseRequest(name: 'Math', logo: '', tags: []);
      when(mockCourseRepository.create(createRequest))
          .thenAnswer((_) async => Success(dummyCourse));

      final result = await mockCourseRepository.create(createRequest);

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), equals(dummyCourse));
    });

    test('delete deve retornar uma String em caso de sucesso', () async {
      when(mockCourseRepository.delete(dummyCourseId))
          .thenAnswer((_) async => Success(dummyString));

      final result = await mockCourseRepository.delete(dummyCourseId);

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), equals(dummyString));
    });
  });
}
