import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/helper_functions/calc_discount.dart';

class BottomActionContainer extends StatelessWidget {
  final double price;
  final double? discount;
  final VoidCallback onChoosePressed;

  const BottomActionContainer({
    super.key,
    required this.price,
    this.discount,
    required this.onChoosePressed,
  });

  @override
  Widget build(BuildContext context) {
    final finalPrice = calculateFinalPrice(price, discount: discount ?? 0);
    String? discountPercentText;
    if (discount != null && discount! > 0) {
      discountPercentText = '${discount!.toStringAsFixed(0)}% off';
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        border: Border(
          top: BorderSide(
            color: AppColors.inputBorderColor.withOpacity(0.7),
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (discountPercentText != null)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${price.toStringAsFixed(2)} Tk" ,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        discountPercentText,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${finalPrice.toStringAsFixed(2)} Tk",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryFontColor,
                    ),
                  ),
                  const Text(
                    ' / Night',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryFontColor,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Single Choose button
          ElevatedButton(
            onPressed: onChoosePressed,
            child: const Text("Choose"),
          ),
        ],
      ),
    );
  }
}
