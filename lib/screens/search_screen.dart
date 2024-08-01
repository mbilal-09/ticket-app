import 'package:flutter/material.dart';
import 'package:ticket_app/animations/fade_animation.dart';
import 'package:ticket_app/base/widgets/icon_box.dart';
import 'package:ticket_app/base/widgets/tabs.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  String activeTitle = 'flights';

  void tabPress(String title) => {
        setState(() {
          activeTitle = title;
          listController.reset();
          listController.forward();
        }),
      };

  List<Map<String, dynamic>> flightData = [
    {'title': 'Departure', 'icon': Icons.flight_takeoff_rounded},
    {'title': 'Arrival', 'icon': Icons.flight_land_rounded},
    {'title': 'From', 'icon': Icons.holiday_village},
    {'title': 'To', 'icon': Icons.home},
  ];

  List<Map<String, dynamic>> hotelData = [
    {'title': 'Location', 'icon': Icons.location_pin},
    {'title': 'Area', 'icon': Icons.location_city},
    {'title': 'No of People', 'icon': Icons.people},
    {'title': 'Rooms', 'icon': Icons.room_preferences},
  ];

  int itemCount = 2;

  bool isExpanded = false;

  void onPressCart() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  // late Animation<double> fadeAnimation;
  // late AnimationController controller;

  late AnimationController controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1500));

  late AnimationController listController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 800));

  late Animation<double> fadeAnimation =
      Tween<double>(begin: 0, end: 1).animate(controller);

  late Animation<Offset> slideAnimation =
      Tween(begin: const Offset(-1, 0), end: Offset.zero)
          .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

  late Animation<double> scaleAnimation = Tween<double>(begin: 0, end: 1)
      .animate(
          CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));

  late List<Animation<Offset>> offsetAnimationList = List.generate(
      flightData.length,
      (index) => Tween(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
              parent: listController,
              curve: Interval(index * (1 / flightData.length), 1))));

  @override
  void initState() {
    super.initState();

    controller.forward();
    listController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        padding:
            const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
        children: [
          FadeAnimation(
            duration: 1000,
            child: SlideTransition(
              position: slideAnimation,
              child: Text(
                'What are\n you looking for?',
                style: AppStyles.textStyles['h35'],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ScaleTransition(
            scale: scaleAnimation,
            child: Row(
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
          ),
          const SizedBox(height: 25),
          Column(
            children: (activeTitle == 'flights' ? flightData : hotelData)
                .indexed
                .map((item) {
              final (index, value) = item;

              return FadeTransition(
                opacity: fadeAnimation,
                child: SlideTransition(
                  position: offsetAnimationList[index],
                  child: IconBox(title: value['title'], icon: value['icon']),
                ),
              );
            }).toList(),
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
              )),
          Center(
            child: GestureDetector(
              onTap: onPressCart,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(top: 15),
                  // padding: const EdgeInsets.symmetric(vertical: 15),
                  width: isExpanded ? 200 : 80,
                  height: 60,
                  decoration: BoxDecoration(
                    color: isExpanded
                        ? AppColors.primaryColor
                        : AppColors.lightBgColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(isExpanded ? 30 : 10)),
                  ),
                  child: isExpanded
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.check,
                              color: AppColors.whiteColor,
                            ),
                            AnimatedOpacity(
                              opacity: 1,
                              duration: const Duration(milliseconds: 500),
                              child: Text(
                                'Added To Cart',
                                style: AppStyles.textStyles['h14'],
                              ),
                            )
                          ],
                        )
                      : const Icon(
                          Icons.shopping_cart,
                          color: AppColors.whiteColor,
                        )),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Center(
              child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 200),
            duration: const Duration(milliseconds: 1500),
            curve: Curves.bounceOut,
            builder: (context, size, widget) {
              return Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.primaryColorLight,
                          blurRadius: size,
                          spreadRadius: size / 2)
                    ]),
              );
            },
          )),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
