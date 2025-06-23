import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/navigation/cubits/navigation_cubit.dart';
import 'package:home_stay/features/navigation/utils/nav_items.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state,
          type: BottomNavigationBarType.fixed,
          items: bottomNavItems,
          onTap: (index) => context.read<NavigationCubit>().updateIndex(index),
          backgroundColor: AppColors.cardColor,
          unselectedItemColor: AppColors.secondaryFontColor,
          selectedItemColor: AppColors.primaryColor,
          unselectedFontSize: 10,
          selectedFontSize: 12,
          iconSize: 22,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        );
      },
    );
  }
}
