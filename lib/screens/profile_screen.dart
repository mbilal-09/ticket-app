import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/provider/counter_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterModel counterModel = Provider.of<CounterModel>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(counterModel.count.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(AppColors.primaryColor),
                      foregroundColor:
                          WidgetStateProperty.all(AppColors.whiteColor)),
                  onPressed: () {
                    counterModel.increment();
                  },
                  child: const Text('+')),
                  const SizedBox(width: 10,),
              TextButton(
                style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(AppColors.primaryColor),
                      foregroundColor:
                          WidgetStateProperty.all(AppColors.whiteColor)),
                  onPressed: () {
                    counterModel.decrement();
                  },
                  child: const Text('-'))
            ],
          ),
        ],
      ),
    );
  }
}
