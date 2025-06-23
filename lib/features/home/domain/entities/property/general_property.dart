import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/domain/entities/property/property_type.dart';

class GeneralProperty extends Property {
  final PropertyType propertyType;

  GeneralProperty({
    required this.propertyType,
    required super.id,
    required super.name,
    required super.location,
    required super.area,
    required super.selfCheckIn,
    required super.insurance,
    required super.costPerNight,
    super.discountPercentage,
    required super.features,
    required super.facilities,
    required super.contactDetails,
    required super.refundPolicy,
    required super.termsAndConditions,
    required super.reviews,
    required super.images,
    super.videoUrl,
    super.bedroomCount,
    super.bathroomCount,
    super.livingRoomCount,
  });

  @override
  String get type => propertyType.name;
}
