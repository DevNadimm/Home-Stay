import 'package:flutter/cupertino.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/presentation/widgets/property_view/property_highlight_card.dart';
import 'package:hugeicons/hugeicons.dart';

class PropertyHighlightsWidget extends StatelessWidget {
  final Property property;

  const PropertyHighlightsWidget({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PropertyHighlightCard(
          icon: HugeIcons.strokeRoundedDoor02,
          label: property.selfCheckIn ? "Self Check-in" : "No Self Check-in",
        ),
        const SizedBox(width: 12),
        PropertyHighlightCard(
          icon: CupertinoIcons.arrow_right_arrow_left_square,
          label: property.area,
        ),
        const SizedBox(width: 12),
        PropertyHighlightCard(
          icon: CupertinoIcons.checkmark_shield,
          label: property.insurance ? "Insured" : "No Insurance",
        ),
      ],
    );
  }
}
