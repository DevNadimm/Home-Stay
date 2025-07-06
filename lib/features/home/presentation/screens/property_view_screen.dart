import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/helper_functions/calc_avg_rating.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/presentation/screens/review_and_payment_screen.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/bottom_action_container.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/contact_details_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/facilities_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/property_action_buttons_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/property_features_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/property_highlights_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/property_image_slider_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/terms_and_policies_widget.dart';

class PropertyViewScreen extends StatelessWidget {
  final Property property;
  final bool isBooked;

  const PropertyViewScreen({super.key, required this.property, this.isBooked = false});

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: !isBooked ? const EdgeInsets.only(bottom: 80) : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PropertyImageSliderWidget(images: property.images),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        property.reviews.isEmpty
                            ? "✨ New"
                            : "⭐ ${calculateAverageRating(property.reviews).toStringAsFixed(1)}/5 (${property.reviews.length}) Reviews",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondaryFontColor,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        property.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryFontColor,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        property.location,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondaryFontColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      PropertyHighlightsWidget(property: property),
                      const SizedBox(height: 30),
                      if (property.features.isNotEmpty) ...[
                        PropertyFeaturesWidget(features: property.features),
                        const SizedBox(height: 30),
                      ],
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.inputBorderColor.withOpacity(0.7),
                      ),
                      const SizedBox(height: 30),
                      FacilitiesWidget(property: property),
                      const SizedBox(height: 10),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.inputBorderColor.withOpacity(0.7),
                      ),
                      const SizedBox(height: 30),
                      TermsAndPoliciesWidget(property: property),
                      const SizedBox(height: 30),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.inputBorderColor.withOpacity(0.7),
                      ),
                      const SizedBox(height: 30),
                      ContactDetailsWidget(contactDetails: property.contactDetails),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: topPadding + 16,
            left: 10,
            right: 10,
            child: const PropertyActionButtonsWidget(),
          ),
          if (!isBooked)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomActionContainer(
                price: property.price,
                discount: property.discountPercentage,
                onChoosePressed: () => Get.to(() => ReviewAndPaymentScreen(property: property)),
              ),
            ),
        ],
      ),
    );
  }
}
