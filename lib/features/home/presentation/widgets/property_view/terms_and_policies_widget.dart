import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';

class TermsAndPoliciesWidget extends StatelessWidget {
  final Property property;

  const TermsAndPoliciesWidget({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Terms & Conditions",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.primaryFontColor,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          property.termsAndConditions.shortSummary,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.secondaryFontColor,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          property.termsAndConditions.fullText,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.secondaryFontColor.withOpacity(0.8),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          "Refund Policy",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.primaryFontColor,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          property.refundPolicy.policyDetails,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.secondaryFontColor,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 6),
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
              property.refundPolicy.isRefundable
                  ? "Refundable"
                  : "Non-refundable",
              style: TextStyle(
                fontSize: 14,
                color: property.refundPolicy.isRefundable
                    ? Colors.green
                    : Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
