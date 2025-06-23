import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/helper_functions/calc_avg_rating.dart';
import 'package:home_stay/core/utils/helper_functions/calc_discount.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';

class UnitPropertyCard extends StatelessWidget {
  final Property property;

  const UnitPropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: AppColors.inputBorderColor.withOpacity(0.7)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  property.images[0],
                  height: MediaQuery.sizeOf(context).width / 1.8,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 6,
                top: 6,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: AppColors.cardColor,
                    size: 22,
                  ),
                ),
              ),
              if (property.discountPercentage != null && property.discountPercentage! > 0)
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
                        '${property.discountPercentage!.toStringAsFixed(0)}% OFF',
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const SizedBox(height: 4),
                Text(
                  property.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryFontColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  property.location,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryFontColor,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    if (property.discountPercentage != null && property.discountPercentage! > 0)
                      Text(
                        "${property.costPerNight.toStringAsFixed(0)} Tk",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    Text(
                      " ${calculateFinalPrice(property.costPerNight, discount: property.discountPercentage).toStringAsFixed(0)} Tk",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryFontColor,
                      ),
                    ),
                    const Text(
                      ' / Night',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondaryFontColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
