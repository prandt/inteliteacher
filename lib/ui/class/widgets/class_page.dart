import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/ui/class/view_models/class_viewmodel.dart';
import 'package:inteliteacher/ui/class/widgets/class_plan_card.dart';
import '../../../shared/widgets/screen_layout.dart';
import 'class_activities_list.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key, required this.courseId, required this.classId});

  final String courseId;
  final String classId;

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  final _viewmodel = injector.get<ClassViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewmodel.getClassCommand.execute(
      widget.courseId,
      widget.classId,
    );

  }

  @override
  void dispose() {
    super.dispose();
    _viewmodel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPageChecker(
      command: _viewmodel.getClassCommand,
      text: 'Não foi possível carregar a aula',
      child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) {
            return ScreenLayout(
              title: _viewmodel.classModel?.title ?? '',
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: 16,
                  children: [
                    ClassPlanCard(classModel: _viewmodel.classModel!),
                    Text(" Atividades",
                        style: Theme.of(context).textTheme.titleLarge),
                    ClassActivitiesList(_viewmodel.activities),
                  ],
                ),
              ),
            );
          }),
    );
  }

}
