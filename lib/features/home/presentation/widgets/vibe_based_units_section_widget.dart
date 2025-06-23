import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/data/datasources/unit_list.dart';
import 'package:home_stay/features/home/presentation/screens/unit_category_screen.dart';
import 'package:home_stay/features/home/presentation/widgets/unit_card_widget.dart';

class VibeBasedUnitsSectionWidget extends StatelessWidget {
  const VibeBasedUnitsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Units that Fit Your Vibe 🌿",
              style: TextStyle(
                color: AppColors.primaryFontColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 120,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: unitTypes.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final unit = unitTypes[index];
                return InkWell(
                  onTap: () => Get.to(() => UnitCategoryScreen(label: unit.label)),
                  child: UnitCardWidget(
                    unitName: unit.label,
                    imageUrl: unit.imageUrl,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
