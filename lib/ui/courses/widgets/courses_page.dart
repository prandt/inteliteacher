import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';

import '../../../config/theme.dart';
import '../../../shared/widgets/custom_back_button.dart';
import '../view_models/courses_viewmodel.dart';
import 'course_item.dart';
import 'create_course.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _viewmodel = injector.get<CoursesViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewmodel.listCommand.execute();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewmodel.listCommand,
      builder: (context, child) {
        if (_viewmodel.listCommand.isFailure) {
          return Material(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 40,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Falha ao carregar as turmas",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  CustomBackButton(isInfinite: true)
                ],
              ),
            ),
          );
        }
        if (_viewmodel.listCommand.isSuccess) {
          return child!;
        }
        return Material(
            child: const Center(child: CircularProgressIndicator()));
      },
      child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) {
            return ScreenLayout(
              title: 'Minhas turmas',
              padding: EdgeInsets.all(16),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 16,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () => openCreateCourseModal(context),
                        label: Text("Criar turma"),
                        icon: Icon(Icons.add, color: AppColors.ghostWhite)),
                    if (_viewmodel.courses.isNotEmpty)
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: ListView.separated(
                            itemBuilder: (context, index) =>
                                CourseItem(course: _viewmodel.courses[index]),
                            separatorBuilder: (_, __) => const Divider(),
                            itemCount: _viewmodel.courses.length),
                      ))
                    else
                      Expanded(
                        child: Center(
                          child: Text(
                            "Nenhuma turma cadastrada",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    CustomBackButton(
                      isInfinite: true,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
