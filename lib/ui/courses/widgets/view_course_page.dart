import 'package:flutter/material.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';

class ViewCoursePage extends StatefulWidget {
  const ViewCoursePage({super.key, required this.id});

  final String id;

  @override
  State<ViewCoursePage> createState() => _ViewCoursePageState();
}

class _ViewCoursePageState extends State<ViewCoursePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayout(title: 'Turma', child: Column());
  }
}
