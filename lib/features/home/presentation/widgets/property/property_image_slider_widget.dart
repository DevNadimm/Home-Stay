import 'package:flutter/material.dart';
import 'package:home_stay/core/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PropertyImageSliderWidget extends StatelessWidget {
  final List<String> images;

  const PropertyImageSliderWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.7,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.network(
                  images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
            ),
            Positioned(
              bottom: 10,
              child: SmoothPageIndicator(
                controller: pageController,
                count: images.length,
                effect: const WormEffect(
                  dotColor: AppColors.secondaryFontColor,
                  activeDotColor: AppColors.primaryColor,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
