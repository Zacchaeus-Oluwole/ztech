import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/widgets/blinking_text.dart';
import 'package:ztech_portfolio/widgets/bouncy_animation.dart';
import 'package:ztech_portfolio/widgets/bouncy_animation_desktop.dart';
import 'package:ztech_portfolio/widgets/scrolling_text.dart';

class MainMobile extends StatelessWidget {
  final Function(int) onNavItemTap;
  const MainMobile({super.key, required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    double multiplier = 0.06;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
      height: screenHeight / 3,
      constraints: const BoxConstraints(minHeight: 650.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       Image.asset("assets/flutter_avatar.png",
          //         width: screenWidth/2.5,
          //       ),
          //       Image.asset("assets/rust.png",
          //         width: screenWidth/3,
          //       ),
          //     ],
          //   ),
          // ShaderMask(
          //   shaderCallback: (bounds) {
          //     return LinearGradient
          //     (colors: [
          //       CustomColor.scaffoldColor.withOpacity(0.6),
          //       CustomColor.scaffoldColor.withOpacity(0.6)
          //     ]
          //   ).createShader(bounds);
          //   },
          //   blendMode: BlendMode.srcATop,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       Image.asset("assets/flutter_avatar.png",
          //         width: screenWidth/2.5,
          //       ),
          //       Image.asset("assets/rust.png",
          //         width: screenWidth/3,
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: 30,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                ],
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
                    child: SizedBox(
                      width: 250,
                      child: BlinkingText(
                        text: "Software & IoT Developer",
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FadeInLeft(
                duration: const Duration(milliseconds: 1500),
                child: AnimatedTextKit(
                    animatedTexts: [
                      // TyperAnimatedText("Seasoned in software and IoT.",
                      //     textStyle: TextStyle(
                      //         fontSize: screenWidth * multiplier,
                      //         height: 1.5,
                      //         fontWeight: FontWeight.bold,
                      //         color: CustomColor.whiteSecondary)),
                      TyperAnimatedText(
                          "Specialist in Flutter for cross-platform application development.",
                          textStyle: TextStyle(
                              fontSize: screenWidth * multiplier,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.whiteSecondary)),
                      TyperAnimatedText(
                          "Skilled in Rust for backend, embedded systems and network programming.",
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
                              color: CustomColor.whiteSecondary
                        )
                      ),
                        
                    ],
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    repeatForever: true),
              ),
              const SizedBox(
                height: 20,
              ),
              MobileProfileAnimation()
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(8, 40, 5, 30),
          //   child: Container(
          //     constraints: BoxConstraints(maxWidth: 1000),
          //     child: ScrollingTextMobile(text: "An experienced software and IoT developer proficient in Flutter for cross-platform app development and Rust for high-performance backend and embedded systems. Passionate about leveraging technology to create efficient and innovative solutions.", fontSize: screenWidth * 0.049,)
          //   ),
          // ),
        ],
      ),
    );
  }
}
