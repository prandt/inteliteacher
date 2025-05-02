import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/model/entities/student/student_model.dart';
import 'package:inteliteacher/shared/custom_validator.dart';

class NewResponseValidator extends CustomValidator<NewResponseValidator> {
  final StudentModel student;
  final ActivityModel activity;
  int? points;

  void setPoints(String value) {
    if (value.isEmpty) {
      points = null;
      return;
    }
    final parsedValue = int.tryParse(value);
    if (parsedValue == null || parsedValue < 0) {
      points = null;
    } else {
      points = parsedValue;
    }
    notifyListeners();
  }

  NewResponseValidator({
    required this.student,
    required this.activity,
  }) {
    ruleFor(((c) => c.points), key: 'points')
        .max(activity.points,
            message: 'Valor máximo de pontos é ${activity.points}');
  }

  @override
  NewResponseValidator get entity => this;
}
