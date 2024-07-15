import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/heading_view.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/components/home_header.dart';
import 'package:ticket_app/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: const [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 20),
            AppHeadingViewAll(
                heading: 'Upcoming Flights', clickableText: 'View All'),
            SizedBox(height: 10),
            TicketView(),
          ],
        ),
      ),
    );
  }
}
