import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';

class PropertyHighlightCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const PropertyHighlightCard({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: MediaQuery.sizeOf(context).width / 3.8,
      width: MediaQuery.sizeOf(context).width / 3.8,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: AppColors.inputBorderColor.withOpacity(0.7)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: AppColors.primaryFontColor),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryFontColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
