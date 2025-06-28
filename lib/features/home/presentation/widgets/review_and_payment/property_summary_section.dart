import 'package:flutter/cupertino.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/helper_functions/calc_avg_rating.dart';
import 'package:home_stay/core/utils/widgets/custom_cached_image.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';

class PropertySummarySection extends StatelessWidget {
  final Property property;

  const PropertySummarySection({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CustomCachedImage(
            imageUrl: property.images[0],
            height: 80,
            width: 70,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                property.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryFontColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                property.location,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryFontColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                property.reviews.isEmpty
                    ? "✨ New"
                    : "⭐ ${calculateAverageRating(property.reviews).toStringAsFixed(1)}/5 (${property.reviews.length}) Reviews",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryFontColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
