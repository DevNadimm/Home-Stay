import 'package:home_stay/features/home/domain/entities/property/review.dart';

double calculateAverageRating(List<Review> reviews) {
  if (reviews.isEmpty) return 0.0;
  double total = reviews.fold(0.0, (sum, r) => sum + r.rating);
  return total / reviews.length;
}