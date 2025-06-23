import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/data/datasources/city_list.dart';

class PopularCitiesSectionWidget extends StatelessWidget {
  const PopularCitiesSectionWidget({super.key});

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
              "Everywhere, you have a home",
              style: TextStyle(
                color: AppColors.primaryFontColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 123,
            child: ListView.separated(
              itemCount: cityList.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 12),
              itemBuilder: (BuildContext context, int index) {
                final city = cityList[index];
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.primaryColorTransparent,
                      backgroundImage: AssetImage(city.imagePath),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      city.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryFontColor,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
