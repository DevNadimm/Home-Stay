import 'package:home_stay/features/home/domain/entities/property/property_type.dart';

class UnitType {
  final PropertyType type;
  final String label;
  final String imageUrl;

  const UnitType({
    required this.type,
    required this.label,
    required this.imageUrl,
  });
}
