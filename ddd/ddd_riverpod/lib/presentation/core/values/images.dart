import 'package:flutter/material.dart';

mixin AppImages {
  static const Widget homeHeader = Image(
    image: AssetImage('assets/images/header_bg.jpg'),
    fit: BoxFit.fill,
  );
  static const Widget logoImage = Image(
    image: AssetImage('assets/images/logo.png'),
    fit: BoxFit.fill,
  );
}
