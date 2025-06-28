import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:hugeicons/hugeicons.dart';

class PriceDetailsSection extends StatelessWidget {
  final Property property;

  const PriceDetailsSection({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    final discountPercentage = property.discountPercentage ?? 0;
    final discountAmount = property.price * discountPercentage / 100;
    const serviceFee = 200.0;
    final total = property.price - discountAmount + serviceFee;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 6),
        const Text(
          "Price Details",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.primaryFontColor,
          ),
        ),
        const SizedBox(height: 10),
        _buildRowSection("One night", property.price),
        _buildRowSection("Offer Discount", discountAmount, isOfferDiscount: true),
        _buildRowSection("Service Fees", serviceFee),
        _buildRowSection(
          "Total",
          total,
          isTotalAmount: true,
          showSavingsBadge: discountAmount > 0,
          savingsText: "Save ${discountAmount.toStringAsFixed(0)} Tk",
        ),
        Divider(
          height: 24,
          thickness: 1,
          color: AppColors.inputBorderColor.withOpacity(0.7),
        ),
        const Row(
          children: [
            Icon(HugeIcons.strokeRoundedDiscount),
            SizedBox(width: 8),
            Text(
              "Add discount code",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryFontColor,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildRowSection(
      String label,
      double amount, {
        bool isTotalAmount = false,
        bool isOfferDiscount = false,
        bool showSavingsBadge = false,
        String? savingsText,
      }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: isTotalAmount ? FontWeight.bold : FontWeight.w500,
                  fontSize: 14,
                  color: isTotalAmount ? AppColors.primaryFontColor : AppColors.secondaryFontColor
                ),
              ),
              if (showSavingsBadge && savingsText != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      savingsText,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Text(
            "${isOfferDiscount ? '- ' : ''}${amount.toStringAsFixed(2)} Tk",
            style: TextStyle(
              color: isOfferDiscount ? Colors.green : AppColors.primaryFontColor,
              fontWeight: isTotalAmount ? FontWeight.bold : FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
