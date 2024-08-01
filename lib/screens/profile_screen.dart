import 'package:flutter/material.dart';
import 'package:ticket_app/constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomPaint(
          size: const Size(350, 50),
          painter: BallPainter(),
        )
      ],
    ));
  }
}

class BallPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
        Offset(size.width / 2, 0), 20, Paint()..color = AppColors.primaryColor);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
