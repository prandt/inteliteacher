import 'package:flutter_test/flutter_test.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:inteliteacher/model/validators/new_class_plan_validator.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:result_dart/result_dart.dart';
import 'ai_repository_test.mocks.dart';

@GenerateMocks([AiRepository])
void main() {
  group('AiRepository', () {
    late MockAiRepository mockAiRepository;
    final mockedValidator =
        NewClassPlanValidator(courseId: 'courseId', classId: 'classId');

    final classPlanRequest = CreateClassPlanRequest(
        title: 'plano de aula',
        objective: 'objective',
        targetAudience: 'targetAudience',
        duration: 'duration',
        resources: ['resources'],
        methodology: 'methodology',
        content: ['content'],
        activities: ['activities'],
        evaluation: 'evaluation',
        classId: '1',
        courseId: '1',
        notes: 'notes');

    setUp(() {
      mockAiRepository = MockAiRepository();
    });

    setUpAll(() {
      provideDummy<ResultDart<CreateClassPlanRequest, Exception>>(
          Success(classPlanRequest));
    });

    test('generateClassPlan deve retornar uma classplan', () async {
      mockedValidator.setPrompt('Crie um belo plano de aula');

      when(mockAiRepository.generateClassPlan(mockedValidator))
          .thenAnswer((_) async => Success(classPlanRequest));

      final result = await mockAiRepository.generateClassPlan(mockedValidator);

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), classPlanRequest);
    });
  });
}
