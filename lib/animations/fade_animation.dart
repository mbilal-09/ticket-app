import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({super.key, required this.duration, required this.child});

  final int duration;
  final Widget child;

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
      vsync: this, duration: Duration(milliseconds: widget.duration));

  late Animation<double> fadeAnimation =
      Tween<double>(begin: 0, end: 1).animate(animationController);

  @override
  void initState() {
    super.initState();
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: widget.child,
    );
  }
}
