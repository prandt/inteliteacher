import 'dart:convert';

import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../../shared/system_instructions.dart';

class AiRepositoryRemote implements AiRepository {
  final _vertex = FirebaseVertexAI.instance;

  @override
  AsyncResult<ClassPlanModel> generateClassPlan(
      {required String prompt}) async {
    final model = _getModelClassPlan();
    try {
      final response = await model.generateContent([Content.text(prompt)]);
      if (response.text?.isNotEmpty ?? false) {
        final json = jsonDecode(response.text!);
        final classPlan = ClassPlanModel.fromJson(json);
        return Success(classPlan);
      }
      return Failure(Exception('Error generating class plan'));
    } catch (e) {
      return Failure(Exception('Error generating class plan: $e'));
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
        'duration': Schema.string(),
        'resources': Schema.array(
          items: Schema.string(),
        ),
        'methodology': Schema.string(),
        'content': Schema.array(
          items: Schema.string(),
        ),
        'activities': Schema.array(
          items: Schema.string(),
        ),
        'evaluation': Schema.string(),
        'notes': Schema.string(),
      },
    );
  }
}
