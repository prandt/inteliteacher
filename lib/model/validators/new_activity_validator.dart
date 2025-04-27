import 'package:inteliteacher/model/entities/activity/activity_model.dart';

import '../../shared/custom_validator.dart';

class NewActivityValidator extends CustomValidator<NewActivityValidator> {
  final String courseId;
  final String classId;
  String title = '';
  String description = '';
  bool hasPoints = false;
  int points = 0;

  void setTitle(String value) {
    title = value;
    notifyListeners();
  }

  void setDescription(String value) {
    description = value;
    notifyListeners();
  }

  void setHasPoints(bool value) {
    hasPoints = value;
    notifyListeners();
  }

  void setPoints(String value) {
    points = int.tryParse(value) ?? 0;
    notifyListeners();
  }

  NewActivityValidator({
    required this.courseId,
    required this.classId,
  }) {
    ruleFor((c) => c.title, key: 'title')
        .notEmpty(message: 'Título não pode ser vazio');

    ruleFor((c) => c.points, key: 'points')
        .when((validator) => validator.hasPoints)
        .greaterThan(0, message: 'Pontos devem ser maiores que 0')
        .lessThan(101, message: 'Pontos devem ser menores que 100');
  }

  @override
  NewActivityValidator get entity => this;

  CreateActivityRequest toRequest() {
    return CreateActivityRequest(
      title: title,
      description: description,
      points: hasPoints ? points : null,
      courseId: courseId,
      classId: classId,
    );
  }
}
