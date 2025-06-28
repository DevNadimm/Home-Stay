import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/presentation/blocs/payment_method_cubit.dart';
import 'package:hugeicons/hugeicons.dart';

class PaymentOptionsSection extends StatelessWidget {
  const PaymentOptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodCubit, String>(
      builder: (context, selectedPayment) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            const Text(
              "Payment Options",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.primaryFontColor,
              ),
            ),
            const SizedBox(height: 10),
            _buildPaymentOption(
              context: context,
              value: 'card',
              selectedPayment: selectedPayment,
              icon: HugeIcons.strokeRoundedCreditCard,
              title: 'Credit/Debit Card',
              subtitle: 'Pay securely using card via Stripe',
            ),
            _buildPaymentOption(
              context: context,
              value: 'wallet',
              selectedPayment: selectedPayment,
              icon: HugeIcons.strokeRoundedWallet02,
              title: 'Mobile Wallet',
              subtitle: 'Coming soon...',
              isEnabled: false,
            ),
            _buildPaymentOption(
              context: context,
              value: 'cash',
              selectedPayment: selectedPayment,
              icon: HugeIcons.strokeRoundedMoneyBag02,
              title: 'Pay on Arrival',
              subtitle: 'Cash payment at check-in',
            ),
          ],
        );
      },
    );
  }

  Widget _buildPaymentOption({
    required BuildContext context,
    required String value,
    required String selectedPayment,
    required IconData icon,
    required String title,
    String? subtitle,
    bool isEnabled = true,
  }) {
    return RadioListTile(
      value: value,
      groupValue: selectedPayment,
      onChanged: isEnabled
          ? (val) => context.read<PaymentMethodCubit>().selectPayment(val.toString())
          : null,
      activeColor: AppColors.primaryColor,
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Icon(icon, size: 22, color: isEnabled ? AppColors.primaryFontColor : Colors.grey),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: isEnabled ? AppColors.primaryFontColor : Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: isEnabled ? AppColors.secondaryFontColor : Colors.grey.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
