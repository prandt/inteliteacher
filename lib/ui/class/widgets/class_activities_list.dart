import 'package:flutter/material.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';

class ClassActivitiesList extends StatelessWidget {
  const ClassActivitiesList(this._activities, {super.key});

  final List<ActivityModel> _activities;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: _activities.isEmpty
            ? Center(
                child: Text(
                  'Não há atividades cadastradas',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              )
            : CustomListView(
                items: _activities,
                itemBuilder: (context, item) => ListTile(
                      title: Text(item.title,
                          style: Theme.of(context).textTheme.titleMedium),
                      trailing: Text('${item.points ?? 'Sem'} pontos',
                          style: Theme.of(context).textTheme.bodySmall),
                    )));
  }
}
