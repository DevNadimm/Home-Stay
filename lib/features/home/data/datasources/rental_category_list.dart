import 'package:flutter/material.dart';
import 'package:home_stay/features/home/domain/entities/rental_category.dart';

List<RentalCategory> rentalCategoryList = [
  RentalCategory(
    title: 'Economy Stay',
    type: RentalCategoryType.lessThan,
    maxPrice: 20000,
    color: Colors.orange,
  ),
  RentalCategory(
    title: "Special Stay",
    type: RentalCategoryType.range,
    minPrice: 20000,
    maxPrice: 40000,
    color: Colors.purple,
  ),
  RentalCategory(
    title: "Luxury Stay",
    type: RentalCategoryType.moreThan,
    minPrice: 40000,
    color: Colors.deepOrangeAccent,
  ),
];
