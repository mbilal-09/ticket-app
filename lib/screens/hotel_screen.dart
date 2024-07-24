import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/components/hotel_card.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels'),
        backgroundColor: AppColors.bgColor,
        titleTextStyle: AppStyles.textStyles['h26'],
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.whiteColor),
      ),
      backgroundColor: AppColors.bgColor,
      body: ListView(children: [
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: hotelList
                .map((hotelData) => Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: HotelCard(hotel: hotelData, width: 1, marginRight: 0),
                    ))
                .toList(),
          ),
        ),
        const SizedBox(height: 10),
      ]),
    );
  }
}