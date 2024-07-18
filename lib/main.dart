import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav.dart';
import 'package:ticket_app/base/utils/routes.dart';
import 'package:ticket_app/screens/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => const BottomNav(),
        AppRoutes.allTickets: (context) => const TicketScreen()
      },
    );
  }
}
