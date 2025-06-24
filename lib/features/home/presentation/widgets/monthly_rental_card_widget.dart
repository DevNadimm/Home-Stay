import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/domain/entities/rental_category.dart';
import 'package:intl/intl.dart';

class MonthlyRentalCardWidget extends StatelessWidget {
  final RentalCategory rentalCategory;

  const MonthlyRentalCardWidget({
    super.key,
    required this.rentalCategory,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('#,##0', 'en_US');

    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: rentalCategory.color,
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (rentalCategory.minPrice != null)
                  Text(
                    "৳${formatter.format(rentalCategory.minPrice)}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.cardColor,
                      height: 1,
                    ),
                  ),
                if (rentalCategory.maxPrice != null)
                  Text(
                    "৳${formatter.format(rentalCategory.maxPrice)}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: AppColors.cardColor,
                      height: 1,
                    ),
                  ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.6),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 8,
            child: Text(
              rentalCategory.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 8,
            child: Text(
              getTypeStr(rentalCategory.type),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getTypeStr(RentalCategoryType type) {
    if (type == RentalCategoryType.lessThan) {
      return "Less Than";
    } else if (type == RentalCategoryType.range) {
      return "Range";
    } else if (type == RentalCategoryType.moreThan) {
      return "More Than";
    } else {
      return "";
    }
  }
}
