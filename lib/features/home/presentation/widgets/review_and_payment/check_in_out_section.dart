import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';

class CheckInOutSection extends StatelessWidget {
  final Property property;

  const CheckInOutSection({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          height: 1,
          thickness: 1,
          color: AppColors.inputBorderColor.withOpacity(0.7),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            _buildColumn(
              "Check-in",
              "03:00 PM",
              "Saturday 28 June",
              Icons.login,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 1,
                height: 50,
                color: AppColors.inputBorderColor.withOpacity(0.7),
              ),
            ),
            _buildColumn(
              "Check-out",
              "11:59 AM",
              "Sunday 29 June",
              Icons.logout,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Divider(
          height: 1,
          thickness: 1,
          color: AppColors.inputBorderColor.withOpacity(0.7),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Icon(
              property.refundPolicy.isRefundable
                  ? Icons.check_circle
                  : Icons.cancel,
              color: property.refundPolicy.isRefundable
                  ? Colors.green
                  : Colors.red,
              size: 18,
            ),
            const SizedBox(width: 6),
            Text(
              property.refundPolicy.policyDetails,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.secondaryFontColor,
                height: 1.4,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildColumn(String label, String time, String date, IconData icon) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.secondaryFontColor,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Icon(
                icon,
                size: 18,
                color: AppColors.primaryFontColor,
              ),
              const SizedBox(width: 6),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            date,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryFontColor,
            ),
          ),
        ],
      ),
    );
  }
}
