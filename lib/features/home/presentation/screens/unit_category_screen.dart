import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/data/datasources/properties.dart';
import 'package:home_stay/features/home/presentation/widgets/unit_property_card.dart';
import 'package:hugeicons/hugeicons.dart';

class UnitCategoryScreen extends StatelessWidget {
  final String label;

  const UnitCategoryScreen({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
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
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 16),
        itemBuilder: (context, index) => UnitPropertyCard(property: properties[0]),
      ),
    );
  }
}
