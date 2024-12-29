import 'package:flutter/material.dart';

import 'colors.dart';

final theme = ThemeData(
  primaryColor: AppColors.primaryGrey,
  primaryColorDark: AppColors.appBarGrey2,
  fontFamily: 'Tondo',
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.primaryGrey,
    secondary: AppColors.primaryRed,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.primaryRed,
    circularTrackColor: AppColors.primaryRed,
    linearTrackColor: AppColors.primaryRed,
  ),
);
