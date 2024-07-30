import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/screens/home_screen.dart';
import 'package:ticket_app/screens/profile_screen.dart';
import 'package:ticket_app/screens/search_screen.dart';
import 'package:ticket_app/screens/ticket_detail_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketDetailScreen(),
    const ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onBottomTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.textColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onBottomTap,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppColors.lightBgColor,
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.lightBgColor,
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
            backgroundColor: AppColors.lightBgColor,
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
            backgroundColor: AppColors.lightBgColor,
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
