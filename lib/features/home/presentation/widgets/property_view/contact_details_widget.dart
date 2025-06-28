import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/features/home/domain/entities/property/contact_details.dart';
import 'package:hugeicons/hugeicons.dart';

class ContactDetailsWidget extends StatelessWidget {
  final ContactDetails contactDetails;

  const ContactDetailsWidget({super.key, required this.contactDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Contact Information",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.primaryFontColor,
          ),
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.orangeAccent,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: AppColors.primaryColor,
                child: Text(
                  contactDetails.ownerName[0].toUpperCase(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contactDetails.ownerName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const Icon(HugeIcons.strokeRoundedTime03, color: AppColors.primaryFontColor, size: 18),
                      const SizedBox(width: 8),
                      Text(
                        "Support: ${contactDetails.supportHours}",
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            const Icon(HugeIcons.strokeRoundedCall02, color: AppColors.primaryFontColor, size: 18),
            const SizedBox(width: 8),
            Text(
              contactDetails.phoneNumber,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(HugeIcons.strokeRoundedMail01, color: AppColors.primaryFontColor, size: 18),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                contactDetails.email,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
