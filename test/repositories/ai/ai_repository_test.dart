import 'package:flutter_test/flutter_test.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:result_dart/result_dart.dart';
import 'ai_repository_test.mocks.dart';

@GenerateMocks([AiRepository])
void main() {
  group('AiRepository', () {
    late MockAiRepository mockAiRepository;

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
        notes: 'notes');

    setUp(() {
      mockAiRepository = MockAiRepository();
    });

    setUpAll(() {
      provideDummy<ResultDart<CreateClassPlanRequest, Exception>>(
          Success(classPlanRequest));
    });

    test('generateClassPlan deve retornar uma classplan', () async {
      final String prompt = 'Crie um belo plano de aula';

      when(mockAiRepository.generateClassPlan(prompt: prompt))
          .thenAnswer((_) async => Success(classPlanRequest));

      final result = await mockAiRepository.generateClassPlan(prompt: prompt);

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), classPlanRequest);
    });
  });
}
