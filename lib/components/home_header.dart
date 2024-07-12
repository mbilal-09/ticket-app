import 'package:flutter/material.dart';
import 'package:ticket_app/styles/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Good Morning',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Book Tickets',
                      style: TextStyle(
                          fontSize: 25,
                          color: AppStyles.textColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 70,
                  color: Colors.red,
                ),
              ],
            ),
            const Row(
              children: [],
            ),
          ],
        ));
  }
}
