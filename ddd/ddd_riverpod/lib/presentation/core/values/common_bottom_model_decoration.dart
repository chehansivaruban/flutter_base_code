import 'package:flutter/material.dart';

import 'colors.dart';

mixin BottomModelDecorations {
  static final BoxDecoration boxDecoration = BoxDecoration(
    color: AppColors.white,
    boxShadow: [
      BoxShadow(
        color: AppColors.lighttertiaryGrey,
        spreadRadius: 0,
        blurRadius: 20,
        offset: const Offset(0, 2),
      ),
    ],
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
    ),
  );

  static final BoxDecoration boxDecoration10 = BoxDecoration(
    color: AppColors.white,
    boxShadow: [
      BoxShadow(
        color: AppColors.lighttertiaryGrey,
        spreadRadius: 0,
        blurRadius: 20,
        offset: const Offset(0, 2),
      ),
    ],
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
    ),
  );
}
