import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';

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
  Widget build(BuildContext context) {
    return CustomPageChecker(
      command: _viewmodel.listCommand,
      text: 'Falha ao carregar as turmas',
      child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) {
            return ScreenLayout(
              title: 'InteliTeacher',
              showProfileButton: true,
              padding: EdgeInsets.all(16),
              floatingActionButton: FloatingActionButton(
                  onPressed: () => openCreateCourseModal(context),
                  child: Icon(Icons.add)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Text(
                      "Minhas turmas",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    if (_viewmodel.courses.isNotEmpty)
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: CustomListView<CourseModel>(
                            itemBuilder: (context, course) =>
                                CourseItem(course: course),
                            items: _viewmodel.courses),
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
                  ],
                ),
              ),
            );
          }),
    );
  }
}
