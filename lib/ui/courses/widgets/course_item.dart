import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:inteliteacher/ui/courses/view_models/courses_viewmodel.dart';

import '../../../config/router.dart';
import '../../../config/theme.dart';

class CourseItem extends StatefulWidget {
  const CourseItem({super.key, required this.course});

  final CourseModel course;

  @override
  State<CourseItem> createState() => _CourseItemState();
}

class _CourseItemState extends State<CourseItem> {
  final _viewModel = injector.get<CoursesViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {},
      key: Key(widget.course.id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: AppColors.redAlert,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.delete, color: Colors.white),
          ),
        ),
      ),
      confirmDismiss: (confirm) async {
        return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: AppColors.ghostWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              title: const Text('Excluir turma'),
              content:
                  const Text('Você tem certeza que deseja excluir esta turma?'),
              actions: [
                TextButton(
                  onPressed: () => context.pop(false),
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: _deleteCourse,
                  child: const Text('Excluir'),
                ),
              ],
            );
          },
        );
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(widget.course.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium),
        onTap: () => context.go(Routes.courseWithId(widget.course.id)),
        trailing: Icon(Icons.arrow_forward_ios,
            size: 16, color: AppColors.tropicalIndigo),
      ),
    );
  }

  void _deleteCourse() {
    _viewModel.deleteCommand.execute(widget.course.id);
    context.pop(true);
  }
}
