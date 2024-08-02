import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_app/constants/constants.dart';
import 'package:ticket_app/provider/counter_provider.dart';

class TicketDetailScreen extends StatelessWidget {
  const TicketDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterModel counterModel = Provider.of<CounterModel>(context);
    PostData postModal = Provider.of<PostData>(context);

    Timer(const Duration(milliseconds: 2000), postModal.getData);

    return SingleChildScrollView(
      child: Center(
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
                const SizedBox(
                  width: 10,
                ),
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
            Column(
                children: postModal.posts
                    .map((item) => Text(item['title']))
                    .toList()),

            // ListView.builder(
            //     itemCount: postModal.posts.length,
            //     prototypeItem: const Text('hello'),
            //     itemBuilder: (context, index) =>
            //         Text(postModal.posts[index]['title']))
          ],
        ),
      ),
    );
  }
}
