import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class Tabs extends StatelessWidget {
  const Tabs(
      {super.key,
      required this.title,
      required this.isLeft,
      required this.isActive,
      required this.onPress});

  final String title;
  final bool isLeft;
  final bool isActive;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: AppColors.transparent,
        onTap: onPress,
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
            height: 40,
            decoration: BoxDecoration(
                color:
                    isActive ? AppColors.primaryColor : AppColors.lightBgColor,
                borderRadius: isLeft
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50))
                    : const BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
            child: Center(
              child: Text(title,
                  style: AppStyles.textStyles['h17']
                      ?.copyWith(color: AppColors.whiteColor)),
            )),
      ),
    );
  }
}
