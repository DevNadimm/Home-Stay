import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/helper_functions/calc_avg_rating.dart';
import 'package:home_stay/core/utils/helper_functions/calc_discount.dart';
import 'package:home_stay/core/utils/widgets/custom_cached_image.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/presentation/screens/property_view_screen.dart';
import 'package:hugeicons/hugeicons.dart';

class UnitPropertyCard extends StatelessWidget {
  final Property property;

  const UnitPropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => PropertyViewScreen(property: property)),
      child: Container(
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
                  child: CustomCachedImage(
                    imageUrl: property.images[0],
                    height: MediaQuery.sizeOf(context).width / 1.8,
                    width: double.infinity,
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
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      if (property.bedroomCount != null)
                        countRoomContainer(property.bedroomCount!, HugeIcons.strokeRoundedBedDouble),
                      if (property.livingRoomCount != null)
                        countRoomContainer(property.livingRoomCount!, HugeIcons.strokeRoundedSofa01),
                      if (property.bathroomCount != null)
                        countRoomContainer(property.bathroomCount!, HugeIcons.strokeRoundedToilet01),
                    ],
                  ),
                  const SizedBox(height: 8),
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
                          "${property.price.toStringAsFixed(0)} Tk",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      Text(
                        " ${calculateFinalPrice(property.price, discount: property.discountPercentage).toStringAsFixed(0)} Tk",
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
      ),
    );
  }

  Widget countRoomContainer (int count, IconData icon)  {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 2,
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                count.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor,
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                icon,
                color: AppColors.primaryFontColor,
                size: 20,
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
