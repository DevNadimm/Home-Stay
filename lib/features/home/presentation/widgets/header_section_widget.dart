import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/presentation/screens/notification_screen.dart';
import 'package:hugeicons/hugeicons.dart';

class HeaderSectionWidget extends StatelessWidget {
  const HeaderSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  HugeIcons.strokeRoundedHotel01,
                  color: AppColors.cardColor,
                ),
              ),
              const SizedBox(width: 16),
              const Column(
                children: [
                  Text(
                    "Welcome back Nadim",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryFontColor,
                    ),
                  ),
                  Text(
                    "Where are you travelling to?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryFontColor,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => const NotificationScreen()),
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.cardColor,
                      child: Icon(
                        HugeIcons.strokeRoundedNotification03,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    right: 2,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.backgroundColor, width: 1.5),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          Container(
            height: 50,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1.2, color: AppColors.inputBorderColor),
            ),
            child: const Row(
              children: [
                Icon(
                  HugeIcons.strokeRoundedSearch02,
                  color: AppColors.secondaryFontColor,
                ),
                SizedBox(width: 10),
                Text(
                  "Search in over 100 cities and towns",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryFontColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
