import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/utils/navigation.dart';
import 'package:ticket_app/base/utils/routes.dart';
import 'package:ticket_app/base/widgets/heading_view.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/components/home_header.dart';
import 'package:ticket_app/components/hotel_card.dart';
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
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const HomeHeader(),
                const SizedBox(height: 20),
                AppHeadingViewAll(
                  heading: 'Upcoming Flights',
                  clickableText: 'View All',
                  func: () => navigate(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(3)
                        .map((ticketData) => TicketView(ticket: ticketData))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                AppHeadingViewAll(
                    heading: 'Hotels',
                    clickableText: 'View All',
                    func: () => navigate(context, AppRoutes.allHotels)),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(3)
                        .map((hotelData) => HotelCard(hotel: hotelData))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
