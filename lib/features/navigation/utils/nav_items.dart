import 'package:flutter/material.dart';
import 'package:home_stay/features/home/presentation/screens/home_screen.dart';
import 'package:hugeicons/hugeicons.dart';

const List<Widget> bottomNavScreens = [
  HomeScreen(),
  Placeholder(),
  Placeholder(),
  Placeholder(),
  Placeholder(),
];

const List<BottomNavigationBarItem> bottomNavItems = [
  BottomNavigationBarItem(
    icon: Icon(HugeIcons.strokeRoundedHome07),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(HugeIcons.strokeRoundedFavourite),
    label: 'Favorite',
  ),
  BottomNavigationBarItem(
    icon: Icon(HugeIcons.strokeRoundedCalendar04),
    label: 'Booking',
  ),
  BottomNavigationBarItem(
    icon: Icon(HugeIcons.strokeRoundedBubbleChat),
    label: 'Conversation',
  ),
  BottomNavigationBarItem(
    icon: Icon(HugeIcons.strokeRoundedMenu01),
    label: 'More',
  ),
];
