import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/widgets/custom_cached_image.dart';
import 'package:home_stay/features/home/presentation/widgets/more_menu_tile.dart';
import 'package:hugeicons/hugeicons.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 22,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const CustomCachedImage(
                  height: 40,
                  width: 40,
                  imageUrl: 'https://myspeaker.se/wp-content/uploads/sites/4/2021/11/Nadim-Ghazale-ny-profilbild.jpg',
                ),
              ),
            ),
            const SizedBox(width: 16),
            const Text("Nadim Chowdhury"),
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          _buildTopRow(label: 'Reservation', value: '0'),
          _buildTopRow(label: 'Ratings (from hosts)', value: '(0) 0.0/5'),
          _buildTopRow(label: 'Hosts who banned you', value: '0'),
          const SizedBox(height: 24),
          Divider(
            height: 5,
            thickness: 5,
            color: AppColors.grey.withOpacity(0.3),
          ),
          const SizedBox(height: 24),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedUser03, label: 'Profile'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedWallet01, label: 'Wallet record'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedThumbsUp, label: 'Rate us'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedHonourStar, label: 'Host with us (Add Property)'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedCreditCard, label: 'Payment methods'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedMail01, label: 'Contact Us'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedUserAdd02, label: 'Invite Friends'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedBubbleChat, label: 'FAQ'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedFile02, label: 'Terms of use'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedSecurityLock, label: 'Privacy policy'),
          const MoreMenuTile(icon: HugeIcons.strokeRoundedLogout03, label: 'Logout'),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle, color: AppColors.success, size: 18),
                  Text(
                    "  |  V 1.0.0",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryFontColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryFontColor,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryFontColor,
            ),
          ),
        ],
      ),
    );
  }
}
