import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:hugeicons/hugeicons.dart';

class PropertyActionButtonsWidget extends StatelessWidget {
  const PropertyActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: const CircleAvatar(
            radius: 21,
            backgroundColor: AppColors.primaryFontColor,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.cardColor,
              child: Icon(
                HugeIcons.strokeRoundedArrowLeft01,
                color: AppColors.black,
                size: 30,
              ),
            ),
          ),
        ),
        const Row(
          children: [
            CircleAvatar(
              radius: 21,
              backgroundColor: AppColors.primaryFontColor,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.cardColor,
                child: Icon(
                  HugeIcons.strokeRoundedShare01,
                  color: AppColors.black,
                  size: 20,
                ),
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 21,
              backgroundColor: AppColors.primaryFontColor,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.cardColor,
                child: Icon(
                  CupertinoIcons.heart,
                  color: AppColors.black,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
