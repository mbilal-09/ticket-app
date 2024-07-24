import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class IconBox extends StatelessWidget {
  const IconBox({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: const BoxDecoration(
          color: AppColors.lightBgColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.whiteColor,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: AppStyles.textStyles['h21']
                ?.copyWith(fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
