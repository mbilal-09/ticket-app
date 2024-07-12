import 'package:flutter/material.dart';
import 'package:ticket_app/components/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HomeHeader(),
        ],
      ),
    );
  }
}
