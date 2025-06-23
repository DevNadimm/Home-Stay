import 'package:flutter/material.dart';
import 'package:home_stay/features/home/presentation/widgets/header_section_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/more_cities_section_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/popular_cities_section_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/top_picks_section_widget.dart';
import 'package:home_stay/features/home/presentation/widgets/vibe_based_units_section_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSectionWidget(),
              PopularCitiesSectionWidget(),
              SizedBox(height: 8),
              TopPicksSectionWidget(),
              SizedBox(height: 8),
              VibeBasedUnitsSectionWidget(),
              SizedBox(height: 8),
              MoreCitiesSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
