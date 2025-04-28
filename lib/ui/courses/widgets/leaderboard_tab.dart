import 'package:flutter/material.dart';
import 'package:inteliteacher/shared/widgets/custom_circle_leader.dart';

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
              CustomCircleLeader.second(),
              CustomCircleLeader.first(),
              CustomCircleLeader.third()
            ],
          )
        ],
      ),
    );
  }
}
