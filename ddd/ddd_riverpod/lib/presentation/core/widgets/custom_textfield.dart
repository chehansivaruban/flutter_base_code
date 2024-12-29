import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textInputAction = TextInputAction.done,
    this.textInputType = TextInputType.text,
    required this.hintText,
    this.label,
    this.obscureText = false,
    this.suffixOnPress,
    this.onChanged,
    this.isSuffix = false,
    this.fillColor,
    this.borderColor,
    this.hintColor,
    this.textColor,
    this.hintStyle,
    this.validator,
    this.controller,
    this.prefixIcon,
    this.enabled = true,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final String hintText;
  final String? label;
  final bool obscureText;
  final VoidCallback? suffixOnPress;
  final Function(String)? onChanged;
  final bool isSuffix;
  final Color? fillColor;
  final Color? borderColor;
  final Color? hintColor;
  final Color? textColor;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final bool enabled;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
          ),
        ],
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          textCapitalization: textCapitalization,
          autofocus: false,
          onChanged: onChanged,
          validator: validator,
          enabled: enabled,
          style: TextStyle(color: textColor),
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
            //  ??
            //     montserratBold.copyWith(
            //       color: hintColor ?? AppColors.thinGrey,
            //       fontSize: 14,
            //     ),
            suffixIcon: isSuffix
                ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: suffixOnPress,
                  )
                : null,
            prefixIcon: prefixIcon,
          ),
        ),
      ],
    );
  }
}
