import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/widgets/blinking_text.dart';
import 'package:ztech_portfolio/widgets/scrolling_text.dart';

class MainDesktop extends StatelessWidget {
  final Function(int ) onNavMenuTap;
  const MainDesktop({super.key, required this.onNavMenuTap});

  @override
  Widget build(BuildContext context) {
    double multiplier = 0.02;
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0
      ),
      // height: screenSize.height/1.2,
      constraints: BoxConstraints(minHeight: screenSize.height/1.2,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
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
                    const SizedBox(height: 15,),
                  ],
                ),
              ),
              Image.asset("assets/flutter_avatar.png",
                width: screenWidth/3,
              ),
              Image.asset("assets/rust.png",
                width: screenWidth/3 - 100,
              ),
            ],
          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
            child: Container(
              constraints: BoxConstraints(maxWidth: 1000),
              child: ScrollingText(text: "An experienced software and IoT developer proficient in Flutter for cross-platform app development and Rust for high-performance backend and embedded systems. Passionate about leveraging technology to create efficient and innovative solutions.", fontSize: screenWidth * 0.019,)
            ),
          ),
        ],
      ),
    );
  }
}