import 'package:flutter/material.dart';
import 'package:inteliteacher/shared/widgets/custom_circle_leader.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';

import '../view_models/course_page_viewmodel.dart';

class LeaderboardTab extends StatelessWidget {
  const LeaderboardTab(this._viewmodel, {super.key});

  final CoursePageViewmodel _viewmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          Center(
            child: Text("Classificação",
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomLeader(
                  studentPoints: const StudentPoints("Ana", "99 pontos"),
                  child: CustomCircleLeader.second()),
              CustomLeader(
                  studentPoints: const StudentPoints("Maria", "98 pontos"),
                  child: CustomCircleLeader.first()),
              CustomLeader(
                  studentPoints: const StudentPoints("João", "95 pontos"),
                  child: CustomCircleLeader.third()),
            ],
          ),
          Expanded(
            child: CustomListView(
                items: mockedStudentPoints,
                itemBuilder: (context, item) => ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      leading: CustomCircleLeader.normal(),
                      title: Text(item.name,
                          style: Theme.of(context).textTheme.titleSmall),
                      trailing: Text(item.points,
                          style: Theme.of(context).textTheme.bodySmall),
                    )),
          )
        ],
      ),
    );
  }
}

class StudentPoints {
  const StudentPoints(this.name, this.points);

  final String name;
  final String points;
}

final mockedStudentPoints = [
  const StudentPoints("Pedro", "90 pontos"),
  const StudentPoints("Lucas", "85 pontos"),
  const StudentPoints("Luiza", "80 pontos"),
  const StudentPoints("Fernanda", "75 pontos"),
  const StudentPoints("Carlos", "70 pontos"),
  const StudentPoints("Mariana", "65 pontos"),
  const StudentPoints("Roberto", "60 pontos"),
];

class CustomLeader extends StatelessWidget {
  const CustomLeader(
      {super.key, required this.studentPoints, required this.child});

  final StudentPoints studentPoints;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        const SizedBox(height: 8),
        Text(studentPoints.name),
        Text(studentPoints.points,
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
