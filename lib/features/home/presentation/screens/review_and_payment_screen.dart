import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/presentation/blocs/payment_method_cubit.dart';
import 'package:home_stay/features/home/presentation/widgets/review_and_payment/check_in_out_section.dart';
import 'package:home_stay/features/home/presentation/widgets/review_and_payment/payment_options_section.dart';
import 'package:home_stay/features/home/presentation/widgets/review_and_payment/price_details_section.dart';
import 'package:home_stay/features/home/presentation/widgets/review_and_payment/property_summary_section.dart';
import 'package:hugeicons/hugeicons.dart';

class ReviewAndPaymentScreen extends StatelessWidget {
  final Property property;

  const ReviewAndPaymentScreen({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Review and Payment"),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            HugeIcons.strokeRoundedArrowLeft01,
            color: AppColors.black,
            size: 30,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => PaymentMethodCubit(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Profile and Check-in-out section
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    PropertySummarySection(property: property),
                    const SizedBox(height: 16),
                    CheckInOutSection(property: property),
                  ],
                ),
              ),
              Divider(
                height: 5,
                thickness: 5,
                color: AppColors.grey.withOpacity(0.3),
              ),

              /// Price details section
              Padding(
                padding: const EdgeInsets.all(16),
                child: PriceDetailsSection(property: property),
              ),
              Divider(
                height: 5,
                thickness: 5,
                color: AppColors.grey.withOpacity(0.3),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PaymentOptionsSection(),
                  ],
                ),
              ),
              Divider(
                height: 5,
                thickness: 5,
                color: AppColors.grey.withOpacity(0.3),
              ),
              BlocBuilder<PaymentMethodCubit, String>(
                builder: (context, selectedPayment) {
                  final isCard = selectedPayment == 'card';
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (isCard) {
                            // Trigger Stripe payment flow
                          } else {
                            // Save booking details to backend
                          }
                        },
                        child: Text(isCard ? "Pay Now" : "Confirm Booking"),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
