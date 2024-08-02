import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation(
      {super.key,
      required this.duration,
      required this.child,
      required this.isAnimation});

  final int duration;
  final Widget child;
  final bool isAnimation;

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.duration));

    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  void didUpdateWidget(FadeAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimation != oldWidget.isAnimation) {
      if (widget.isAnimation) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
    }
  }

  // void startAnimation() {
  //   if (widget.isAnimation) {
  //     animationController.forward();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: widget.child,
    );
  }
}
