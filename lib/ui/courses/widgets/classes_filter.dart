import 'package:flutter/material.dart';
import 'package:inteliteacher/ui/courses/view_models/course_page_viewmodel.dart';

import '../../../shared/widgets/custom_chip_selectable.dart';

enum ClassFilterEnum {
  all('Todas aulas'),
  today('Aulas para hoje'),
  ;

  const ClassFilterEnum(this.title);

  final String title;
}

class ClassesFilter extends StatelessWidget {
  const ClassesFilter(this._viewmodel, {super.key});

  final CoursePageViewmodel _viewmodel;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      direction: Axis.horizontal,
      spacing: 8,
      children: ClassFilterEnum.values
          .map((filter) => CustomChipSelectable(
              onSelected: (v) => _viewmodel.setClassFilter(filter),
              label: filter.title,
              selected: _viewmodel.classFilter == filter))
          .toList(),
    );
  }
}
