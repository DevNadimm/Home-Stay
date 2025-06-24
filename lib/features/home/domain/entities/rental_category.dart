import 'package:flutter/material.dart';

class RentalCategory {
  final String title;
  final int? minPrice;
  final int? maxPrice;
  final RentalCategoryType type;
  final Color color;

  RentalCategory({
    required this.title,
    required this.type,
    this.minPrice,
    this.maxPrice,
    required this.color,
  });
}

enum RentalCategoryType {
  lessThan,
  range,
  moreThan,
}
