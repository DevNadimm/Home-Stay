import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/data/datasources/rental_category_list.dart';
import 'package:home_stay/features/home/presentation/widgets/monthly_rental_card_widget.dart';

class MonthlyRentalsSectionWidget extends StatelessWidget {
  const MonthlyRentalsSectionWidget({super.key});

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
              "Monthly Rentals 🏠",
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
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: rentalCategoryList.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final category = rentalCategoryList[index];
                return MonthlyRentalCardWidget(
                  rentalCategory: category,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
