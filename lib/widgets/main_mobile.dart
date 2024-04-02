import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/widgets/blinking_text.dart';
import 'package:ztech_portfolio/widgets/scrolling_text.dart';

class MainMobile extends StatelessWidget {
  final Function(int) onNavItemTap;
  const MainMobile({super.key, required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    double multiplier = 0.05;
    
    return Container(

      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30
      ),
      height: screenHeight/3,
      constraints: const BoxConstraints(minHeight: 650.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient
              (colors: [
                CustomColor.scaffoldColor.withOpacity(0.6),
                CustomColor.scaffoldColor.withOpacity(0.6)
              ]
            ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/flutter_avatar.png",
                  width: screenWidth/2.5,
                ),
                Image.asset("assets/rust.png",
                  width: screenWidth/3,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),

          Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hi,",
                    style: TextStyle(
                      fontSize: screenWidth * multiplier,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whiteSecondary
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "I'm ",
                    style: TextStyle(
                      fontSize: screenWidth * multiplier,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whiteSecondary
                    ),
                  ),
                  BlinkingText(text: "Zacchaeus Oluwole,", fontSize: screenWidth * multiplier,),
                ],
              ),
              Row(
                children: [
                  Text(
                    "a ",
                    style: TextStyle(
                      fontSize: screenWidth * multiplier,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whiteSecondary
                    ),
                  ),
                  BlinkingText(text: "Flutter and Rust Developer", fontSize: screenWidth * multiplier,),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 50),
            child: Container(
              constraints: BoxConstraints(maxWidth: 1000),
              child: ScrollingTextMobile(text: "An experienced software and IoT developer proficient in Flutter for cross-platform app development and Rust for high-performance backend and embedded systems. Passionate about leveraging technology to create efficient and innovative solutions.", fontSize: screenWidth * 0.049,)
            ),
          ),
        ],
      ),
    );
  }
}