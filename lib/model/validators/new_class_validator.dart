import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:inteliteacher/shared/extensions.dart';

import '../../shared/custom_validator.dart';

class NewClassValidator extends CustomValidator<NewClassValidator> {
  String title = '';
  String description = '';
  DateTime startAt = DateTime.now().zero();

  void setTitle(String value) {
    title = value;
    notifyListeners();
  }

  void setDescription(String value) {
    description = value;
    notifyListeners();
  }

  void setStartAt(DateTime value) {
    startAt = value;
    notifyListeners();
  }

  NewClassValidator() {
    ruleFor((c) => c.title, key: 'title')
        .notEmpty(message: 'Título não pode ser vazio');

    ruleFor((c) => c.startAt, key: 'startAt').greaterThanOrEqualTo(
        DateTime.now().zero(),
        message: 'A data de início deve ser maior que a data atual');
  }

  @override
  NewClassValidator get entity => this;

  CreateClassRequest toRequest(String courseId) {
    return CreateClassRequest(
        title: title,
        description: description,
        courseId: courseId,
        startAt: startAt);
  }

}

