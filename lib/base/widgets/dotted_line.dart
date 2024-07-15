import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({super.key, required this.randomDivider, this.width = 3});

  final int randomDivider;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(color: AppColors.whiteColor),
                  ),
                )),
      );
    });
  }
}
