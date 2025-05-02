import 'package:flutter/material.dart';
import 'package:inteliteacher/model/entities/activity_response/activity_response_model.dart';
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
          if (_viewmodel.leaderboard.length == 3)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomLeader(
                    response: _viewmodel.leaderboard[1],
                    child: CustomCircleLeader.second()),
                CustomLeader(
                    response: _viewmodel.leaderboard[0],
                    child: CustomCircleLeader.first()),
                CustomLeader(
                    response: _viewmodel.leaderboard[2],
                    child: CustomCircleLeader.third()),
              ],
            )
          else
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                spacing: 16,
                children: [
                  Text(
                    "Ainda falta algumas coisas...",
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Não há alunos suficientes para gerar a classificação",
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          if (_viewmodel.restOfLeaderboard.isNotEmpty)
            Expanded(
              child: CustomListView(
                  items: _viewmodel.restOfLeaderboard,
                  itemBuilder: (context, item) => ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 8),
                        leading: CustomCircleLeader.normal(),
                        title: Text(item.studentName,
                            style: Theme.of(context).textTheme.titleSmall),
                        trailing: Text(item.points.toString(),
                            style: Theme.of(context).textTheme.bodySmall),
                      )),
            )
        ],
      ),
    );
  }
}

class CustomLeader extends StatelessWidget {
  const CustomLeader({super.key, required this.response, required this.child});

  final ActivityResponseModel response;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        const SizedBox(height: 8),
        Text(response.studentName),
        Text(response.points.toString(),
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
