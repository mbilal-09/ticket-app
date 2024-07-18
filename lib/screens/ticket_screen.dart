import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/styles/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tickets'),
        backgroundColor: AppColors.bgColor,
        titleTextStyle: AppStyles.textStyles['h26'],
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.whiteColor),
      ),
      backgroundColor: AppColors.bgColor,
      body: ListView(children: [
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: ticketList
                .map((ticketData) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TicketView(ticket: ticketData, margin: 0),
                    ))
                .toList(),
          ),
        ),
        const SizedBox(height: 10),
      ]),
    );
  }
}
