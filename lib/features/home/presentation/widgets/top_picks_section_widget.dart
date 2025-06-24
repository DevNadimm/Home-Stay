import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/data/datasources/properties.dart';
import 'package:home_stay/features/home/presentation/screens/property_view_screen.dart';
import 'package:home_stay/features/home/presentation/widgets/property/top_picks_item_card_widget.dart';

class TopPicksSectionWidget extends StatelessWidget {
  const TopPicksSectionWidget({super.key});

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
              "Top Picks For You 🏡",
              style: TextStyle(
                color: AppColors.primaryFontColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 273,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: properties.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 12),
              itemBuilder: (BuildContext context, int index) {
                final property = properties[index];
                return Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => Get.to(() => PropertyViewScreen(property: property)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: TopPicksItemCardWidget(property: property),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
