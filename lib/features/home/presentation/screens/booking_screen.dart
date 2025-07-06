import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/widgets/custom_cached_image.dart';
import 'package:home_stay/core/utils/widgets/empty_state_widget.dart';
import 'package:home_stay/features/home/data/datasources/user_bookings.dart';
import 'package:home_stay/features/home/domain/entities/booking.dart';
import 'package:home_stay/features/home/presentation/screens/property_view_screen.dart';
import 'package:intl/intl.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Booking> bookings = userBookings;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookings"),
      ),
      body: bookings.isEmpty
          ? const EmptyStateWidget(
              title: 'No Bookings Yet',
              message: 'You haven’t made any bookings yet. All your bookings will appear here once you book a property.',
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: bookings.length,
              itemBuilder: (context, index) {
                final booking = bookings[index];
                final property = booking.property;

                return Card(
                  elevation: 0,
                  color: AppColors.cardColor,
                  margin: const EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      Get.to(() => PropertyViewScreen(property: property, isBooked: true));
                    },
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: CustomCachedImage(
                                    imageUrl: property.images.first,
                                    width: 120,
                                    height: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  left: -50,
                                  child: Transform.rotate(
                                    angle: -0.785398,
                                    child: Container(
                                      width: 150,
                                      padding: const EdgeInsets.symmetric(vertical: 4),
                                      color: _statusColor(booking.status.name).withOpacity(0.9),
                                      alignment: Alignment.center,
                                      child: Text(
                                        booking.status.name.capitalizeFirst ?? '',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    property.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryFontColor,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                       const Icon(Icons.location_on_outlined, size: 14, color: AppColors.secondaryFontColor),
                                      const SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          property.location,
                                          style:  const TextStyle(fontSize: 14, color: AppColors.secondaryFontColor),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 12),

                                  // Check-in/out
                                  Row(
                                    children: [
                                      const Icon(Icons.login_rounded, size: 14, color: AppColors.grey),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          "Check-in: ${formatDateTimeWithTime(booking.checkIn)}",
                                          style: const TextStyle(fontSize: 12, color: AppColors.grey),
                                          maxLines: 1,
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      const Icon(Icons.logout_rounded, size: 14, color: AppColors.grey),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          "Check-out: ${formatDateTimeWithTime(booking.checkOut)}",
                                          style: const TextStyle(fontSize: 12, color: AppColors.grey),
                                          maxLines: 1,
                                          overflow: TextOverflow.fade,
                                        ),
                                      ),
                                    ],
                                  ),


                                  const Spacer(),

                                  Text(
                                    '${booking.totalPrice.toStringAsFixed(0)} Tk',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                );

              },
            ),
    );
  }

  String formatDateTimeWithTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);

    final formatter = DateFormat('MMM d, yyyy');
    final timeFormatter = DateFormat('h:mm a');

    return '${formatter.format(dateTime)} at ${timeFormatter.format(dateTime)}';
  }


  Color _statusColor(String status) {
    switch (status.toLowerCase()) {
      case 'completed':
        return Colors.green;
      case 'upcoming':
        return Colors.blue;
      case 'cancelled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
