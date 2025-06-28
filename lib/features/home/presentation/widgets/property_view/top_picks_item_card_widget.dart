import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/helper_functions/calc_avg_rating.dart';
import 'package:home_stay/core/utils/widgets/custom_cached_image.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';

class TopPicksItemCardWidget extends StatelessWidget {
  final Property property;

  const TopPicksItemCardWidget({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    double? discount = property.discountPercentage;
    double price = property.price;

    final double finalPrice = (discount != null && discount > 0)
        ? price * (1 - discount / 100)
        : price;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomCachedImage(
                imageUrl: property.images[0],
                height: 120,
                width: MediaQuery.of(context).size.width / 2.2,
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.cardColor,
                child: Icon(
                  CupertinoIcons.heart_fill,
                  size: 20,
                  color: Colors.red.withOpacity(0.4),
                ),
              ),
            ),
            if (discount != null && discount > 0)
              Positioned(
                top: 12,
                left: -26,
                child: Transform.rotate(
                  angle: -0.785398,
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    color: Colors.redAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '${discount.toStringAsFixed(0)}% OFF',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        // Average rating or new tag
        Text(
          property.reviews.isEmpty
              ? "✨ New"
              : "⭐ ${calculateAverageRating(property.reviews).toStringAsFixed(1)}/5",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryFontColor,
          ),
        ),
        const SizedBox(height: 6),
        // Property Name
        Text(
          property.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryFontColor,
          ),
        ),
        const SizedBox(height: 4),
        // Property Type with nice decoration
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            property.type.toUpperCase(),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
              letterSpacing: 0.5,
            ),
          ),
        ),
        const SizedBox(height: 6),
        // Location
        Text(
          property.location,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.secondaryFontColor,
          ),
        ),
        const SizedBox(height: 4),
        // Cost per night row
        Row(
          children: [
            if (discount != null && discount > 0) ...[
              Text(
                "${property.price.toStringAsFixed(0)} Tk",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 6),
            ],
            Text(
              "${finalPrice.toStringAsFixed(0)} Tk",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryFontColor,
              ),
            ),
            const SizedBox(width: 4),
            const Text(
              "/ Night",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryFontColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
