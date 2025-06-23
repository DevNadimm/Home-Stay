import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/themes/app_bar_theme.dart';
import 'package:home_stay/core/utils/themes/elevated_button_theme.dart';
import 'package:home_stay/core/utils/themes/input_decoration_theme.dart';

ThemeData theme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  appBarTheme: appBarTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  inputDecorationTheme: inputDecorationTheme,
  scaffoldBackgroundColor: AppColors.backgroundColor,
);
