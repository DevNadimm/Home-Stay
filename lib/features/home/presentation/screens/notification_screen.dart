import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:home_stay/core/utils/widgets/empty_state_widget.dart';
import 'package:hugeicons/hugeicons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            HugeIcons.strokeRoundedArrowLeft01,
            color: AppColors.black,
            size: 30,
          ),
        ),
      ),
      body: const EmptyStateWidget(
        title: 'No Notifications Yet',
        message: 'You currently have no notifications. Once there is an update, it will appear here.',
        icon: HugeIcons.strokeRoundedNotificationOff03,
      ),
    );
  }
}
