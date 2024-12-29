import 'package:flutter/material.dart';
import '../values/colors.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.hintText,
    this.label,
    this.value,
    this.fillColor,
    this.borderColor,
    this.hintColor,
    this.textColor = Colors.black,
    this.hintStyle,
    this.dropdownColor,
    this.iconColor,
    this.alignment = AlignmentDirectional.centerStart,
  });

  final List<DropdownMenuItem<T>> items;
  final void Function(T?) onChanged;
  final String hintText;
  final String? label;
  final T? value;
  final Color? fillColor;
  final Color? borderColor;
  final Color? hintColor;
  final Color? textColor;
  final TextStyle? hintStyle;
  final Color? dropdownColor;
  final Color? iconColor;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            // style: montserratMedium.copyWith(
            //   fontSize: 16,
            //   color: AppColors.primaryTextColor,
            // ),
          ),
          const SizedBox(height: 8),
        ],
        DropdownButtonFormField<T>(
          value: value,
          items: items,
          onChanged: onChanged,
          alignment: alignment,
          dropdownColor: dropdownColor,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: iconColor,
          ),
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
          isExpanded: true,
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
            alignLabelWithHint: true,
            isCollapsed: true,
            isDense: true,
            hintStyle: (hintStyle
                //    ??
                //       montserratBold.copyWith(
                //         color: hintColor ?? AppColors.primaryTextColor,
                //         fontSize: 14,
                //       ),
                // ).copyWith(height: 2.5),
                ),
          ),
        ),
      ],
    );
  }
}
