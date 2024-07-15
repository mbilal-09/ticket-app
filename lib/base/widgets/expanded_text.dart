import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class ExpandedText extends StatelessWidget {
  const ExpandedText(
      {super.key, required this.text, required this.align, this.fontSize = 14});

  final String text;
  final TextAlign align;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      text,
      style: AppStyles.textStyles['h14']
          ?.copyWith(color: AppColors.whiteColor, fontSize: fontSize),
      textAlign: align,
    ));
  }
}
