import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/dot.dart';
import 'package:ticket_app/base/widgets/dotted_line.dart';
import 'package:ticket_app/base/widgets/expanded_text.dart';
import 'package:ticket_app/base/widgets/ticket_cut_circle.dart';
import 'package:ticket_app/constants/constants.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const ExpandedText(
                          text: 'NYC', align: TextAlign.left, fontSize: 17),
                      const SizedBox(width: 50),
                      const TicketDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: DottedLine(randomDivider: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          )
                        ],
                      )),
                      const TicketDot(),
                      const SizedBox(width: 50),
                      const ExpandedText(
                          text: 'LDN', align: TextAlign.right, fontSize: 17),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExpandedText(text: 'New-York', align: TextAlign.left),
                      ExpandedText(text: '8H 30M', align: TextAlign.center),
                      ExpandedText(text: 'London', align: TextAlign.right),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primaryColor,
                  AppColors.primaryColor,
                  AppColors.primaryColor,
                  AppColors.lightBgColor,
                  AppColors.lightBgColor,
                  AppColors.lightBgColor,
                ],
              )),
              child: const Row(
                children: [
                  TicketCutCircle(isRight: true),
                  Expanded(
                      child: DottedLine(
                    randomDivider: 15,
                    width: 6,
                  )),
                  TicketCutCircle(isRight: false)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: AppColors.lightBgColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExpandedText(
                          text: '1 MAY', align: TextAlign.left, fontSize: 17),
                      ExpandedText(
                          text: '08:00 AM',
                          align: TextAlign.center,
                          fontSize: 17),
                      ExpandedText(
                          text: '23', align: TextAlign.right, fontSize: 17),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExpandedText(text: 'Date', align: TextAlign.left),
                      ExpandedText(
                          text: 'Departure Time', align: TextAlign.center),
                      ExpandedText(text: 'Number', align: TextAlign.right),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
