import 'dart:convert';

import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:inteliteacher/data/execptions/app_exceptions.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:inteliteacher/model/validators/new_class_plan_validator.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/entities/class_plans/class_plan_model.dart';
import '../../../shared/system_instructions.dart';

class AiRepositoryRemote implements AiRepository {
  final _vertex = FirebaseVertexAI.instance;

  @override
  AsyncResult<ClassPlanModel> generateClassPlan(
      NewClassPlanValidator validator) async {
    final model = _getModelClassPlan();
    try {
      final response =
          await model.generateContent([Content.text(validator.prompt)]);
      if (response.text?.isNotEmpty ?? false) {
        final json = jsonDecode(response.text!);
        final classPlan = ClassPlanModel.fromJson(json);
        return Success(classPlan);
      }
      return Failure(AiException('Falha ao gerar o plano de aula'));
    } catch (e, s) {
      return Failure(AiException('Falha ao gerar o plano de aula', s));
    }
  }

  GenerativeModel _getModelClassPlan() {
    return _vertex.generativeModel(
        model: 'gemini-2.0-flash-001',
        systemInstruction: Content.text(SystemInstructions.classPlans),
        generationConfig: GenerationConfig(
            responseMimeType: 'application/json',
            responseSchema: _getResponseSchemaClassPlan()));
  }

  Schema _getResponseSchemaClassPlan() {
    return Schema.object(
      properties: {
        'title': Schema.string(),
        'objective': Schema.string(),
        'target_audience': Schema.string(),
        'duration': Schema.integer(),
        'resources': Schema.array(
          items: Schema.string(),
        ),
        'methodology': Schema.string(),
        'content': Schema.array(
          items: Schema.string(),
        ),
        'activities': Schema.array(
          items: Schema.object(properties: {
            'title': Schema.string(),
            'description': Schema.string(),
            'points': Schema.integer(),
          }),
        )
      },
    );
  }
}
