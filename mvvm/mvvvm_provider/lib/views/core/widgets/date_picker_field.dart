import 'package:flutter/material.dart';

class DatePickerField extends StatelessWidget {
  const DatePickerField({
    super.key,
    required this.hintText,
    this.label,
    this.controller,
    this.validator,
    this.fillColor,
    this.borderColor,
    this.hintColor,
    this.textColor,
    this.hintStyle,
    this.enabled = true,
    this.onChanged,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.yearOnly = false,
  });

  final String hintText;
  final String? label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Color? fillColor;
  final Color? borderColor;
  final Color? hintColor;
  final Color? textColor;
  final TextStyle? hintStyle;
  final bool enabled;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool yearOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            // style: montserratBold.copyWith(
            //   fontSize: 16,
            //   color: AppColors.primaryTextColor,
            // ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: controller,
          readOnly: true,
          enabled: enabled,
          style: TextStyle(color: textColor),
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: fillColor != null,
            fillColor: fillColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: borderColor ?? const Color(0xFFDDE5EF),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: borderColor ?? const Color(0xFFDDE5EF),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            // errorStyle: montserratMedium.copyWith(
            //   color: Colors.red,
            //   fontSize: 12,
            // ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            hintText: hintText,
            hintStyle: hintStyle,
            // ??
            //     montserratBold.copyWith(
            //       color: hintColor ?? AppColors.thinGrey,
            //       fontSize: 14,
            //     ),
            suffixIcon: const Icon(Icons.calendar_today),
          ),
          onTap: enabled
              ? () async {
                  if (yearOnly) {
                    final date = await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Select Year'),
                          content: SizedBox(
                            width: 300,
                            height: 300,
                            child: YearPicker(
                              firstDate: firstDate ?? DateTime(1900),
                              lastDate: lastDate ?? DateTime.now(),
                              selectedDate: initialDate ?? DateTime.now(),
                              onChanged: (DateTime dateTime) {
                                Navigator.pop(context, dateTime);
                              },
                            ),
                          ),
                        );
                      },
                    );
                    if (date != null && controller != null) {
                      final yearStr = date.year.toString();
                      controller!.text = yearStr;
                      onChanged?.call(yearStr);
                    }
                  } else {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: initialDate ?? DateTime.now(),
                      firstDate: firstDate ?? DateTime(1900),
                      lastDate: lastDate ?? DateTime.now(),
                    );
                    if (date != null && controller != null) {
                      final dateStr = date.toString().split(' ')[0];
                      controller!.text = dateStr;
                      onChanged?.call(dateStr);
                    }
                  }
                }
              : null,
          validator: validator,
        ),
      ],
    );
  }
}
