// bottom_navigation_bar.dart
import 'package:flutter/material.dart';
import 'package:senior_code_app/exports.dart';
import 'package:senior_code_app/featuers/my_account/presentation/screen/my_account_screen.dart';
import '../../../featuers/chat/presentation/screen/chat_screen.dart';
import '../../../featuers/home/presentation/screens/home_screen.dart';
import '../../../featuers/reservation/presentation/screen/reservation_screen.dart';
import '../../../featuers/reviews/presentation/screen/reviews_screen.dart';
import 'bottom_navigation_bar_body.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 2; // Default to Home

  // List of screens for each tab
  final List<Widget> screens = [
    const MyAccountScreen(),
    const ReservationScreen(),
    const HomeScreen(),
    const ReviewsScreen(),
    const ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBarBody(
        selectedIndex: selectedIndex,
        onItemTapped: _onItemTapped, // Pass the callback function
      ),
    );
  }
}

//! This screens will be removed in the next commits of the project...
