import 'package:flutter/material.dart';
import 'package:home_stay/features/home/domain/entities/rental_category.dart';

List<RentalCategory> rentalCategoryList = [
  RentalCategory(
    title: 'Economy Stay',
    type: RentalCategoryType.lessThan,
    maxPrice: 4000,
    color: Colors.orange,
  ),
  RentalCategory(
    title: "Special Stay",
    type: RentalCategoryType.range,
    minPrice: 4000,
    maxPrice: 7000,
    color: Colors.purple,
  ),
  RentalCategory(
    title: "Luxury Stay",
    type: RentalCategoryType.moreThan,
    minPrice: 7000,
    color: Colors.deepOrangeAccent,
  ),
];
