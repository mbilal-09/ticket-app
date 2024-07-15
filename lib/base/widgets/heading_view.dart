import 'package:flutter/material.dart';
import 'package:ticket_app/styles/app_styles.dart';

class AppHeadingViewAll extends StatelessWidget {
  const AppHeadingViewAll(
      {super.key, required this.heading, required this.clickableText});

  final String heading;
  final String clickableText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: AppStyles.textStyles['h21'],
        ),
        InkWell(
          onTap: () {},
          child: Text(
            clickableText,
            style: AppStyles.textStyles['h17']
                ?.copyWith(fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}