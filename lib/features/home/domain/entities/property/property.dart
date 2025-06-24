import 'package:home_stay/features/home/domain/entities/property/contact_details.dart';
import 'package:home_stay/features/home/domain/entities/property/facility.dart';
import 'package:home_stay/features/home/domain/entities/property/refund_policy.dart';
import 'package:home_stay/features/home/domain/entities/property/rental_pricing_type.dart';
import 'package:home_stay/features/home/domain/entities/property/review.dart';
import 'package:home_stay/features/home/domain/entities/property/terms_and_conditions.dart';

abstract class Property {
  final String id;
  final String name;
  final String location;
  final String area;
  final bool selfCheckIn;
  final bool insurance;
  final double price;
  final RentalPricingType pricingType;
  final double? discountPercentage;
  final List<String> features;
  final List<Facility> facilities;
  final ContactDetails contactDetails;
  final RefundPolicy refundPolicy;
  final TermsAndConditions termsAndConditions;
  final List<Review> reviews;
  final List<String> images;
  final String? videoUrl;
  final int? bedroomCount;
  final int? bathroomCount;
  final int? livingRoomCount;

  const Property({
    required this.id,
    required this.name,
    required this.location,
    required this.area,
    required this.selfCheckIn,
    required this.insurance,
    required this.price,
    required this.pricingType,
    this.discountPercentage,
    required this.features,
    required this.facilities,
    required this.contactDetails,
    required this.refundPolicy,
    required this.termsAndConditions,
    required this.reviews,
    required this.images,
    this.videoUrl,
    this.bedroomCount,
    this.bathroomCount,
    this.livingRoomCount,
  });

  String get type;

  double get finalPrice {
    if (discountPercentage == null || discountPercentage! <= 0) {
      return price;
    }
    return price * (1 - discountPercentage! / 100);
  }
}
