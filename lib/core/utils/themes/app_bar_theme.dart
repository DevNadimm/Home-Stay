import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';

AppBarTheme appBarTheme = const AppBarTheme(
  backgroundColor: AppColors.backgroundColor,
  foregroundColor: AppColors.primaryFontColor,
  scrolledUnderElevation: 0,
  centerTitle: false,
  titleTextStyle: TextStyle(
    fontSize: 20,
    color: AppColors.primaryFontColor,
    fontWeight: FontWeight.w600,
  ),
);
