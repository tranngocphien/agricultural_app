import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  //One instance, needs factory
  static AppColors? _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static const primaryColor = Color(0xff53B175);
  static const darkGrey = Color(0xff7C7C7C);
  static const black = Color(0xff000000);
  static const white = Color(0xffffffff);
  static const red01 = Color(0xffb5182a);
  static const colorF8F8F8 = Color(0xFFF8F8F8);
  static const colorFEEAE2 = Color(0xFFFEEAE2);
  static const color330AC7 = Color(0xFF330AC7);
  static const colorA8A8A8 = Color(0xFFA8A8A8);
  static const color4D4C4C = Color(0xFF4D4C4C);
}
