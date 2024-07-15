import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';

class TicketCutCircle extends StatelessWidget {
  const TicketCutCircle({super.key, required this.isRight});

  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: isRight == true
              ? const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))
              : const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
        ),
      ),
    );
  }
}
