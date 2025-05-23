import 'package:flutter/material.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/loading_overlay.dart';
import 'package:inteliteacher/shared/widgets/custom_page_checker.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';
import 'package:inteliteacher/ui/courses/widgets/students_tab.dart';
import 'package:result_command/result_command.dart';

import '../../../data/execptions/app_exceptions.dart';
import '../view_models/course_page_viewmodel.dart';
import 'classes_tab.dart';
import 'leaderboard_tab.dart';

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
    _viewmodel.addStudentCommand.addListener(_listenAddStudent);
    _viewmodel.addClassCommand.addListener(_listenAddClass);
  }

  void _listenAddStudent() {
    LoadingOverlay.instance().hide();
    if (_viewmodel.addStudentCommand.isRunning) {
      LoadingOverlay.instance().show(context, text: 'Adicionando aluno');
      return;
    }
    if (_viewmodel.addStudentCommand.isSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text('Aluno adicionado com sucesso', textAlign: TextAlign.center),
        ),
      );
      return;
    }
    if (_viewmodel.addStudentCommand.isFailure) {
      final error =
          (_viewmodel.addStudentCommand.value as FailureCommand).error;
      String message = 'Falha ao adicionar aluno';
      if (error is CourseException) {
        message = error.message;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColors.redAlert,
          content: Text(
            message,
            textAlign: TextAlign.center,
          ),
        ),
      );
      return;
    }
  }

  void _listenAddClass() {
    LoadingOverlay.instance().hide();
    if (_viewmodel.addClassCommand.isRunning) {
      LoadingOverlay.instance().show(context, text: 'Criando aula');
      return;
    }
    if (_viewmodel.addClassCommand.isSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Aula criada com sucesso', textAlign: TextAlign.center),
        ),
      );
      return;
    }
    if (_viewmodel.addClassCommand.isFailure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColors.redAlert,
          content: Text(
            'Falha ao criar aula',
            textAlign: TextAlign.center,
          ),
        ),
      );
      return;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _viewmodel.addStudentCommand.removeListener(_listenAddStudent);
    _viewmodel.addClassCommand.removeListener(_listenAddClass);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPageChecker(
      command: _viewmodel.loadCommand,
      text: "Falha ao carregar a turma",
      child: ListenableBuilder(
          listenable: _viewmodel,
          builder: (context, _) {
            return ScreenLayout(
              title: _viewmodel.course?.name ?? '',
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _viewmodel.tabIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.leaderboard), label: 'Clasificação'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assignment), label: 'Aulas'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.people), label: 'Alunos'),
                ],
                selectedItemColor: AppColors.tropicalIndigo,
                onTap: _viewmodel.setTabIndex,
              ),
              child: IndexedStack(
                index: _viewmodel.tabIndex,
                children: [
                  LeaderboardTab(_viewmodel),
                  ClassesTab(_viewmodel, courseId: widget.id),
                  StudentsTab(_viewmodel),
                ],
              ),
            );
          }),
    );
  }
}
