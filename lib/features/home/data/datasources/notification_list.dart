import 'package:home_stay/features/home/domain/entities/notification_model.dart';

final List<NotificationModel> notificationList = [
  NotificationModel(
    id: 'n1',
    title: 'Booking Confirmed',
    message: 'Your booking for Urban Comfort Flat is confirmed.',
    dateTime: DateTime.now().toString(),
  ),
  NotificationModel(
    id: 'n2',
    title: 'Payment Received',
    message: 'We have received your payment of ৳12,000 for May rental.',
    dateTime:
        DateTime.now().subtract(const Duration(days: 1, hours: 2)).toString(),
    isRead: true,
  ),
  NotificationModel(
    id: 'n3',
    title: 'New Property Added',
    message: 'Check out the newly added luxury apartment near you.',
    dateTime: DateTime.now().subtract(const Duration(days: 3)).toString(),
    isRead: false,
  ),
];
