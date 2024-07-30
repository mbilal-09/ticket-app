import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_app/base/bottom_nav.dart';
import 'package:ticket_app/base/utils/providers.dart';
import 'package:ticket_app/base/utils/routes.dart';
import 'package:ticket_app/provider/counter_provider.dart';
import 'package:ticket_app/screens/hotel_screen.dart';
import 'package:ticket_app/screens/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterModel>(create: (context) => CounterModel()),
      ],
      child: const Main(),
      );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => const BottomNav(),
        AppRoutes.allTickets: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const HotelScreen(),
      },
    );
  }
}