import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/widgets/blinking_text.dart';
import 'package:ztech_portfolio/widgets/bouncy_animation_desktop.dart';
import 'package:ztech_portfolio/widgets/scrolling_text.dart';

class MainDesktop extends StatelessWidget {
  final Function(int) onNavMenuTap;
  const MainDesktop({super.key, required this.onNavMenuTap});

  @override
  Widget build(BuildContext context) {
    double multiplier = 0.023;
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      // height: screenSize.height/1.2,
      constraints: BoxConstraints(
        minHeight: screenSize.height / 1.2,
      ),
      child: Column(
        children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        FadeInLeft(
                          duration: const Duration(milliseconds: 1500),
                          child: Text(
                            "Hi,",
                            style: TextStyle(
                                fontSize: screenWidth * multiplier,
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.whiteSecondary),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        FadeInLeft(
                          duration: const Duration(milliseconds: 1500),
                          child: Text(
                            "I'm ",
                            style: TextStyle(
                                fontSize: screenWidth * multiplier,
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.whiteSecondary),
                          ),
                        ),
                        FadeInDown(
                          duration: const Duration(milliseconds: 1500),
                          child: BlinkingText(
                            text: "Zacchaeus Oluwole,",
                            fontSize: screenWidth * multiplier,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        FadeInLeft(
                          duration: const Duration(milliseconds: 1500),
                          child: Text(
                            "a ",
                            style: TextStyle(
                                fontSize: screenWidth * multiplier,
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.whiteSecondary),
                          ),
                        ),
                        FadeInLeft(
                          duration: const Duration(milliseconds: 1500),
                          child: BlinkingText(
                            text: "Flutter and Rust Developer",
                            fontSize: screenWidth * multiplier,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1500),
                      child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText("Seasoned in software and IoT.",
                                textStyle: TextStyle(
                                    fontSize: screenWidth * multiplier,
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColor.whiteSecondary)),
                            TyperAnimatedText(
                                "Specialist in Flutter for app development.",
                                textStyle: TextStyle(
                                    fontSize: screenWidth * multiplier,
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColor.whiteSecondary)),
                            TyperAnimatedText(
                                "skilled in Rust for backend/embedded systems.",
                                textStyle: TextStyle(
                                    fontSize: screenWidth * multiplier,
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColor.whiteSecondary)),
                            TyperAnimatedText(
                                "Driven by a passion for efficient, innovative technology.",
                                textStyle: TextStyle(
                                    fontSize: screenWidth * multiplier,
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColor.whiteSecondary)),
                          ],
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          repeatForever: true),
                    ),
                  ],
                ),
              ),
              const ProfileAnimation(),
            ],
          ),
        ],
      ),
    );
  }
}
