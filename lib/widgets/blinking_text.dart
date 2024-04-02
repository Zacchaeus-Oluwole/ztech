import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ztech_portfolio/widgets/gradient_color_text.dart';

class BlinkingText extends StatefulWidget {
  final String text;
  final double fontSize;
  const BlinkingText({super.key, required this.text, required this.fontSize});

  @override
  State<BlinkingText> createState() => _BlinkingTextState();
}

class _BlinkingTextState extends State<BlinkingText> {

  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _isVisible = !_isVisible;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: Duration(seconds: 3),
      child: GradientText(
        widget.text,
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green, Colors.orange],
        ),
        style: TextStyle(
          fontSize: widget.fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


