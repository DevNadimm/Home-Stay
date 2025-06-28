import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';

class PropertyFeaturesWidget extends StatelessWidget {
  final List<String> features;

  const PropertyFeaturesWidget({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Features",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.primaryFontColor,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: features.map((feature) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                border: Border.all(color: AppColors.inputBorderColor.withOpacity(0.7), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                feature,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryFontColor,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
