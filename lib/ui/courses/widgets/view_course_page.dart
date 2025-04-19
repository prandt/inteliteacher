import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';

import '../../../shared/widgets/custom_list_view.dart';
import '../view_models/course_page_viewmodel.dart';

class ViewCoursePage extends StatefulWidget {
  const ViewCoursePage({super.key, required this.id});

  final String id;

  @override
  State<ViewCoursePage> createState() => _ViewCoursePageState();
}

class _ViewCoursePageState extends State<ViewCoursePage> {
  final _viewmodel = injector.get<CoursePageViewmodel>();

  @override
  void initState() {
    super.initState();
    _viewmodel.loadCommand.execute(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewmodel.loadCommand,
      builder: (context, child) => CustomPageChecker(
          command: _viewmodel.loadCommand,
          text: "Falha ao carregar a turma",
          child: child!),
      child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) {
            return ScreenLayout(
              title: _viewmodel.course?.name ?? '',
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _viewmodel.tabIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assignment), label: 'Atividades'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.people), label: 'Alunos'),
                  // BottomNavigationBarItem(
                  //     icon: Icon(Icons.school), label: 'Notas'),
                ],
                selectedItemColor: AppColors.tropicalIndigo,
                onTap: _viewmodel.setTabIndex,
              ),
              child: IndexedStack(
                index: _viewmodel.tabIndex,
                children: [
                  ActivitiesTab(),
                  StudentsTab(),
                  GradeTab(),
                ],
              ),
            );
          }),
    );
  }
}

class ActivitiesTab extends StatelessWidget {
  const ActivitiesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Adicionar atividade')),
        ],
      ),
    );
  }
}

class StudentsTab extends StatelessWidget {
  const StudentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: CustomListView<String>(
            items: ['Lucas', 'João', 'Maria', 'Ana'],
            itemBuilder: (context, item) {
              return ListTile(
                title: Text(item),
                subtitle: Text(item),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            },
          )),
          ElevatedButton.icon(
              onPressed: () {},
              label: Text('Adicionar aluno'),
              icon: Icon(Icons.person_add_alt_1,
                  color: AppColors.ghostWhite, size: 16)),
        ],
      ),
    );
  }
}

class GradeTab extends StatelessWidget {
  const GradeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // ElevatedButton(onPressed: () {}, child: Text('Adicionar atividade')),
        ],
      ),
    );
  }
}
