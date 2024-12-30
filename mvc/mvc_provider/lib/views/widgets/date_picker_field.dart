import 'package:flutter/material.dart';
import '../../core/constants/app_constants.dart';

class DatePickerField extends StatelessWidget {
  const DatePickerField({
    Key? key,
    required this.controller,
    this.onChanged,
    this.validator,
    this.label = 'Select Date',
  }) : super(key: key);

  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );

        if (date != null) {
          controller.text = date.toString().split(' ')[0];
          onChanged?.call(controller.text);
        }
      },
      validator: validator,
    );
  }
}
