import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/model/entities/course/course_model.dart';
import 'package:inteliteacher/shared/extensions.dart';
import 'package:inteliteacher/ui/courses/view_models/courses_viewmodel.dart';

import '../../../config/router.dart';
import '../../../config/theme.dart';
import '../../../shared/widgets/custom_dialog.dart';

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
        return await CustomDialog.showCustomDialog<bool>(
          context,
          title: 'Excluir turma',
          content: 'Você tem certeza que deseja excluir esta turma?',
          okResult: true,
          cancelResult: false,
          cancelText: 'Cancelar',
          okText: 'Excluir',
          onResult: (result) {
            if (result == true) {
              _deleteCourse();
            }
            context.pop();
          },
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.periwinkle,
          child: Text(widget.course.name.toAvatarAcronyms(),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: AppColors.ghostWhite,
                  )),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        title: Text(widget.course.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium),
        onTap: () => context.go(Routes.courseWithId(widget.course.id)),
        trailing: Icon(Icons.arrow_forward_ios,
            size: 18, color: AppColors.tropicalIndigo),
      ),
    );
  }

  void _deleteCourse() {
    _viewModel.deleteCommand.execute(widget.course.id);
  }
}
