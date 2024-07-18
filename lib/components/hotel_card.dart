import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.6,
      height: 300,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: AppColors.lightBgColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(hotel['image'])),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotel['place'],
              style: AppStyles.textStyles['h26'],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotel['destination'],
              style: AppStyles.textStyles['h17'],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 2),
            child: Text(
              '\$${hotel['price']}/night',
              style: AppStyles.textStyles['h17'],
            ),
          ),
        ],
      ),
    );
  }
}
