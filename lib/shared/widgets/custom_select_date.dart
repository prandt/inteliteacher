import 'package:flutter/material.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/extensions.dart';
import 'package:inteliteacher/shared/widgets/custom_text_button.dart';

typedef DateCallback = void Function(DateTime date);

class CustomSelectDate extends StatelessWidget {
  const CustomSelectDate(
      {super.key,
      required this.date,
      this.defaultText = 'Selecionar data',
      this.onDateSelected,
      this.validator});

  final DateTime? date;
  final String defaultText;
  final DateCallback? onDateSelected;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return FormField(
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextButton(
                  label: date?.toFancyDate() ?? defaultText,
                  onPressed: () => _openDatePicker(context)),
              if (state.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    state.errorText ?? '',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.redAlert,
                        ),
                  ),
                ),
            ],
          );
        });
  }

  void _openDatePicker(BuildContext context) async {
    final newDate = await showDatePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDate: date ?? DateTime.now(),
      helpText: 'Selecione uma data',
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (newDate == null) return;
    onDateSelected?.call(newDate);
  }
}
