import 'package:flutter/material.dart';

mixin ColumnRowSpaces {
  static const Widget columnSpace10 = SizedBox(
    height: 10,
  );

  static const Widget columnSpace20 = SizedBox(
    height: 20,
  );

  static const Widget rowSpace10 = SizedBox(
    height: 10,
  );
}

mixin AppPaddings {
  static const innerPadding = 20.0;
  static const innerHorizontalPadding = 15;
  static const innerVerticalPadding = 10;
  static const outerPadding = 20.0;
  static const modalBottomPadding = 30;
}
