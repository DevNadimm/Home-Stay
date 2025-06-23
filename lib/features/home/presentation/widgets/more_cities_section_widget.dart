import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/data/datasources/more_city_list.dart';
import 'package:home_stay/features/home/presentation/widgets/city_card_widget.dart';

class MoreCitiesSectionWidget extends StatelessWidget {
  const MoreCitiesSectionWidget({super.key});

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
              "Now in More Cities ✨",
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
              itemCount: moreCityList.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final city = moreCityList[index];
                return CityCardWidget(
                  cityName: city.name,
                  imageUrl: city.imagePath,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
