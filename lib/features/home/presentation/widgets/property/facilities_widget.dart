import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/presentation/utils/get_facility_icon.dart';

class FacilitiesWidget extends StatelessWidget {
  final Property property;

  const FacilitiesWidget({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Facilities with description",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.primaryFontColor,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: property.facilities.length,
          itemBuilder: (context, index) {
            final facility = property.facilities[index];
            return Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.all(0),
                leading: Icon(
                  getFacilityIcon(facility.category),
                  color: AppColors.primaryFontColor,
                ),
                collapsedIconColor: Colors.grey,
                iconColor: Colors.grey,
                title: Text(
                  facility.category,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryFontColor,
                  ),
                ),
                children: facility.features.map((feature) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 42.0, vertical: 4),
                    child: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.circle_fill,
                          color: Colors.grey,
                          size: 12,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            feature,
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.secondaryFontColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            );
          },
        )
      ],
    );
  }
}
