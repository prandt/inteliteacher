import 'package:flutter/material.dart';
import 'package:inteliteacher/shared/widgets/screen_layout.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return const ScreenLayout(title: 'Minhas turmas', child: Column());
  }
}
