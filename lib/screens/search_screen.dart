import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/icon_box.dart';
import 'package:ticket_app/base/widgets/tabs.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String activeTitle = 'flights';

  void tabPress(String title) => {
        setState(() {
          activeTitle = title;
        })
      };

  List<Map<String, dynamic>> flightData = [
    {'title': 'Departure', 'icon': Icons.flight_takeoff_rounded},
    {'title': 'Arrival', 'icon': Icons.flight_land_rounded},
  ];

  List<Map<String, dynamic>> hotelData = [
    {'title': 'Location', 'icon': Icons.location_pin},
    {'title': 'Area', 'icon': Icons.location_city},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        padding:
            const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
        children: [
          Text(
            'What are\n you looking for?',
            style: AppStyles.textStyles['h35'],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Tabs(
                  title: "Flights",
                  isLeft: true,
                  isActive: activeTitle == 'flights',
                  onPress: () => tabPress('flights')),
              Tabs(
                  title: "Hotels",
                  isLeft: false,
                  isActive: activeTitle == 'hotels',
                  onPress: () => tabPress('hotels')),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            children: (activeTitle == 'flights' ? flightData : hotelData)
                .map(
                    (item) => IconBox(title: item['title'], icon: item['icon']))
                .toList(),
          ),
          TextButton(
              style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15)),
                  backgroundColor:
                      WidgetStateProperty.all(AppColors.primaryColor),
                  shape: WidgetStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
              onPressed: () => {},
              child: Center(
                child: Text(
                  activeTitle == 'flights' ? 'Find Flights' : "Find Hotels",
                  style: AppStyles.textStyles['h17']
                      ?.copyWith(color: AppColors.whiteColor),
                ),
              ))
        ],
      ),
    );
  }
}
