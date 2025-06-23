import 'package:flutter/material.dart';
import 'package:home_stay/features/home/data/datasources/facility_categories.dart';
import 'package:hugeicons/hugeicons.dart';

IconData getFacilityIcon(String category) {
  switch (category) {
    case FacilityCategory.livingRoom:
      return HugeIcons.strokeRoundedSofa01;
    case FacilityCategory.bedrooms:
      return HugeIcons.strokeRoundedBedDouble;
    case FacilityCategory.kitchen:
      return HugeIcons.strokeRoundedKitchenUtensils;
    case FacilityCategory.bathroom:
      return HugeIcons.strokeRoundedBathtub02;
    case FacilityCategory.balcony:
      return HugeIcons.strokeRoundedChair02;
    case FacilityCategory.generalAmenities:
      return HugeIcons.strokeRoundedTvSmart;
    case FacilityCategory.gym:
      return HugeIcons.strokeRoundedBodyPartMuscle;
    case FacilityCategory.wifi:
      return HugeIcons.strokeRoundedInternetAntenna04;
    default:
      return HugeIcons.strokeRoundedHome01;
  }
}
