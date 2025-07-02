import 'package:home_stay/core/utils/enums/booking_status.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';

class Booking {
  final String id;
  final Property property;
  final String checkIn;
  final String checkOut;
  final double totalPrice;
  final BookingStatus status; // e.g. 'Completed', 'Cancelled', 'Upcoming'

  Booking({
    required this.id,
    required this.property,
    required this.checkIn,
    required this.checkOut,
    required this.totalPrice,
    required this.status,
  });
}
