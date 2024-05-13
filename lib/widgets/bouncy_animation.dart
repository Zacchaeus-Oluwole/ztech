import 'package:flutter/material.dart';

class MobileProfileAnimation extends StatefulWidget {
  const MobileProfileAnimation({super.key});

  @override
  State<MobileProfileAnimation> createState() => _MobileProfileAnimationState();
}

class _MobileProfileAnimationState extends State<MobileProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);
    _animation = Tween(begin: const Offset(0, 0.1), end: const Offset(0, 0.2))
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        "assets/zachhh.png",
        width: screenWidth,
        height: 250,
        fit: BoxFit.contain,
      ),
    );
  }
}
