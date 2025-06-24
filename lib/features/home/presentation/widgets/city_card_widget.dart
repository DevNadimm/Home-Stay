import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/widgets/custom_cached_image.dart';

class CityCardWidget extends StatelessWidget {
  final String cityName;
  final String imageUrl;

  const CityCardWidget({
    super.key,
    required this.cityName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CustomCachedImage(
              imageUrl: imageUrl,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.6),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 8,
            child: Text(
              cityName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 20,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(24),
                ),
                border: Border(
                  left: BorderSide(width: 0.5, color: Colors.white),
                  right: BorderSide(width: 0.5, color: Colors.white),
                  bottom: BorderSide(width: 0.5, color: Colors.white),
                  top: BorderSide.none,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              child: const Text(
                "New",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
