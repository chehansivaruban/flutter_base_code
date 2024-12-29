import 'package:flutter/material.dart';

import 'colors.dart';

mixin CardDecorations {
  static final BoxDecoration boxDecoration = BoxDecoration(
    color: AppColors.containerWhite,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: [
      BoxShadow(
        color: AppColors.cardShadow,
        spreadRadius: 0,
        blurRadius: 5,
        offset: const Offset(0, 1),
      ),
    ],
  );

  static final BoxDecoration iconBackgroundDecoration = BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.containerWhite,
  );

  static final BoxDecoration boxDecorationCustom = BoxDecoration(
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
      topRight: Radius.circular(12),
      bottomRight: Radius.circular(12),
    ),
  );

  static final BoxDecoration boxDecoration3 = BoxDecoration(
    color: AppColors.white,
    boxShadow: [
      BoxShadow(
        color: AppColors.lighttertiaryGrey,
        spreadRadius: 5,
        blurRadius: 15,
        offset: const Offset(0, 3),
      ),
    ],
    borderRadius: BorderRadius.circular(10),
  );

  static final BoxDecoration boxDecoration4 = BoxDecoration(
    color: Colors.white,
    boxShadow: const [
      BoxShadow(
        color: AppColors.lighterSecondaryGrey,
        // offset: const Offset(0, 2),
      ),
    ],
    borderRadius: BorderRadius.circular(10),
  );

  static final BoxDecoration headerBoxDecoration = BoxDecoration(
    color: const Color(0xffb0b0b0),
    borderRadius: BorderRadius.circular(5),
  );

  static final BoxDecoration detailsBoxDecoration = BoxDecoration(
    color: AppColors.primaryRed,
    borderRadius: BorderRadius.circular(5),
  );

  static final BoxDecoration subDetailsBoxDecoration = BoxDecoration(
    color: AppColors.lightSecondaryGrey,
    borderRadius: BorderRadius.circular(5),
  );

  static final BoxDecoration optionsBoxDecoration = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: AppColors.optionsBoxBorderGrey,
    ),
  );

  static final BoxDecoration earnMoreCardboxDecoration = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      color: AppColors.optionsBoxBorderGrey,
    ),
  );
}
