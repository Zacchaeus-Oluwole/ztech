import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';

class ScrollingText extends StatelessWidget {
  final String text;
  final double fontSize;

  const ScrollingText({super.key, required this.text, required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: fontSize,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: [Colors.blue, Colors.green, Colors.orange],
          ).createShader(Rect.fromLTWH(400, 200, 500, 100.0)),
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(text),
        ],
        onTap: () {
        },
      ),
    );
  }
}


class ScrollingTextMobile extends StatelessWidget {
  final String text;
  final double fontSize;

  const ScrollingTextMobile({super.key, required this.text, required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColor.whiteSecondary
        // foreground: Paint()
        //   ..shader = LinearGradient(
        //     colors: [Colors.blue, Colors.green, Colors.orange],
        //   ).createShader(Rect.fromLTWH(100, 200, 150, 100.0)),
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(text),
        ],
        onTap: () {
        },
      ),
    );
  }
}