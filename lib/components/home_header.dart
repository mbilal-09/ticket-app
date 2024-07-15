import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: AppStyles.textStyles['h17'],
                ),
                const SizedBox(height: 5),
                Text(
                  'Book Tickets',
                  style: AppStyles.textStyles['h26'],
                ),
              ],
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightBgColor,
                  image:
                      const DecorationImage(image: AssetImage(AppImages.logo))),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightBgColor,
          ),
          child: Row(
            children: [
              const Icon(FluentSystemIcons.ic_fluent_search_regular,
                  color: AppColors.textColor),
              const SizedBox(width: 10),
              Text('Search', style: AppStyles.textStyles['h17'])
            ],
          ),
        ),
      ],
    );
  }
}
