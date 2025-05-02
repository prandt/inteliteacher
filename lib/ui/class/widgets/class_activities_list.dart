import 'package:flutter/material.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';
import 'package:inteliteacher/shared/widgets/custom_list_view.dart';

typedef ActivityOpenAction = void Function(ActivityModel activity);

class ClassActivitiesList extends StatelessWidget {
  const ClassActivitiesList(this._activities,
      {super.key, required this.onActivityOpen});

  final List<ActivityModel> _activities;
  final ActivityOpenAction onActivityOpen;

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
                      onTap: () => onActivityOpen(item),
                      title: Text(item.title,
                          style: Theme.of(context).textTheme.titleSmall),
                      trailing: Text('${item.points} pontos',
                          style: Theme.of(context).textTheme.bodySmall),
                    )));
  }
}
