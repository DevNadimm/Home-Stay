import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/widgets/empty_state_widget.dart';
import 'package:home_stay/features/home/data/datasources/properties.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/presentation/widgets/unit_property_card.dart';
import 'package:hugeicons/hugeicons.dart';

class UnitCategoryScreen extends StatelessWidget {
  final String label;

  const UnitCategoryScreen({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final String propertyType = label.substring(0, label.length - 1).toLowerCase();
    final List<Property> filteredProperties = properties.where((property) => property.type == propertyType).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(label),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            HugeIcons.strokeRoundedArrowLeft01,
            color: AppColors.black,
            size: 30,
          ),
        ),
      ),
      body: filteredProperties.isEmpty
          ? const EmptyStateWidget(
              title: 'No Properties Found',
              message: 'There are no properties available in this category at the moment.',
              icon: HugeIcons.strokeRoundedFileEmpty02,
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: filteredProperties.length,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return UnitPropertyCard(
                  property: filteredProperties[index],
                );
              },
            ),
    );
  }
}
