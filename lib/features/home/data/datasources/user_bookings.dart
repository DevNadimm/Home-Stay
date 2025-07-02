import 'package:home_stay/core/utils/enums/booking_status.dart';
import 'package:home_stay/features/home/data/datasources/properties.dart';
import 'package:home_stay/features/home/domain/entities/booking.dart';

final List<Booking> userBookings = [
  Booking(
    id: 'B001',
    property: properties[1],
    checkIn: '2024-12-20 15:00:00.000',
    checkOut: '2024-12-23 11:59:00.000',
    totalPrice: 24000,
    status: BookingStatus.completed,
  ),
  Booking(
    id: 'B002',
    property: properties[5],
    checkIn: '2025-07-12 15:00:00.000',
    checkOut: '2025-07-13 11:59:00.000',
    totalPrice: 8600,
    status: BookingStatus.upcoming,
  ),
];
