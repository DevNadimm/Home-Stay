import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/utils/themes/theme.dart';
import 'package:home_stay/features/navigation/cubits/navigation_cubit.dart';
import 'package:home_stay/features/navigation/screens/navigation_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavigationCubit()),
      ],
      child: GetMaterialApp(
          title: 'HomeStay',
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: const NavigationScreen()
      ),
    );
  }
}