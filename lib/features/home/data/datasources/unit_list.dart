import 'package:home_stay/features/home/domain/entities/property/property_type.dart';
import 'package:home_stay/features/home/domain/entities/unit_type.dart';

final List<UnitType> unitTypes = [
  const UnitType(
    type: PropertyType.apartment,
    label: 'Apartments',
    imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/1*fbMHLTfXUXUycWScqFcXcw.jpeg',
  ),
  const UnitType(
    type: PropertyType.chalet,
    label: 'Chalets',
    imageUrl: 'https://ziwarhinoandwildliferanch.com/wp-content/uploads/2024/05/ziwa-luxury-chalets-evening-03.webp',
  ),
  const UnitType(
    type: PropertyType.studio,
    label: 'Studios',
    imageUrl: 'https://props.universalstudios.com/Images/Slider/Hours-Announcement.jpg',
  ),
  const UnitType(
    type: PropertyType.istraha,
    label: 'Istrahas',
    imageUrl: 'https://a0.muscache.com/im/pictures/d0a9d366-d3d8-493d-8239-51db28583f81.jpg?im_w=720',
  ),
  const UnitType(
    type: PropertyType.resort,
    label: 'Resorts',
    imageUrl: 'https://robbreport.com/wp-content/uploads/2017/11/itzana-resort-and-residences.jpg',
  ),
  const UnitType(
    type: PropertyType.villa,
    label: 'Villas',
    imageUrl: 'https://www.binayah.com/wp-content/smush-webp/2024/02/WADI-Villas-at-Meydan-Banner-1.jpg.webp',
  ),
  const UnitType(
    type: PropertyType.farm,
    label: 'Farm',
    imageUrl: 'https://www.akroncf.org/wp-content/uploads/farm-gifts.jpg',
  ),
  const UnitType(
    type: PropertyType.camp,
    label: 'Camps',
    imageUrl: 'https://static.toiimg.com/thumb/100182603/Planning-a-camping-trip-Heres-what-you-need-to-pack.jpg?width=1200&height=900',
  ),
];
