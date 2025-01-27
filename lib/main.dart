import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:ticket_app/base/bottom_nav.dart';
import 'package:ticket_app/base/utils/routes.dart';
import 'package:ticket_app/provider/counter_provider.dart';
import 'package:ticket_app/requests/requests.dart';
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
        ChangeNotifierProvider<CounterModel>(
            create: (context) => CounterModel()),
        ChangeNotifierProvider<PostData>(create: (context) => PostData()),
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
      // onGenerateRoute: (settings) {
      //   switch (settings.name) {
      //     case AppRoutes.allTickets:
      //       return const TicketScreen();
      //     case AppRoutes.allHotels:
      //       return const HotelScreen();
      //     case AppRoutes.homePage:
      //       return const BottomNav();
      //     default:
      //       return null;
      //   }
      // },
      routes: {
        AppRoutes.homePage: (context) => const BottomNav(),
        AppRoutes.allTickets: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const HotelScreen(),
      },
    );
  }
}
