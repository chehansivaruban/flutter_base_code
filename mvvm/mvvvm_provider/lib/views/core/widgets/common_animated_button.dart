import 'package:flutter/material.dart';

class CommonAnimatedButton extends StatelessWidget {
  const CommonAnimatedButton({
    super.key,
    this.label,
    this.widget,
    this.color,
    this.textColor,
    this.height = 45,
    this.disabled = false,
    this.isLoading = false,
    this.isTransparent = false,
    required this.onPressed,
    this.horizantalPadding,
    this.width,
  });

  final Color? color;
  final bool disabled;
  final bool isLoading;
  final bool isTransparent;
  final double? height;
  final double? horizantalPadding;
  final String? label;
  final VoidCallback onPressed;
  final Color? textColor;
  final Widget? widget;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled || isLoading ? null : onPressed,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double effectiveWidth = width ?? constraints.maxWidth;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isLoading ? 60.0 : effectiveWidth,
            height: height,
            padding: EdgeInsets.symmetric(
              horizontal: horizantalPadding ?? 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              gradient: isTransparent
                  ? null
                  : (color == null
                      ? const LinearGradient(
                          colors: [
                            Color(0xFF78102e),
                            Color(0xFFa70d2d),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )
                      : null),
              color: isTransparent
                  ? null
                  : disabled
                      ? (color ?? const Color(0xFFa70d2d)).withOpacity(0.5)
                      : color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: isLoading
                  ? const CircularProgressIndicator(
                      strokeWidth: 2.0,
                      backgroundColor: Colors.transparent,
                      color: Colors.pink,
                    )
                  : Text(
                      label ?? "",
                      // style: montserratRegular.copyWith(
                      //   color: disabled
                      //       ? (textColor ?? Colors.white).withOpacity(0.5)
                      //       : textColor ?? Colors.white,
                      //   fontWeight: FontWeight.w600,
                      // ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
