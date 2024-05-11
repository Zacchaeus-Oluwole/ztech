import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen.dart';
import 'package:ztech_portfolio/pages/home_page.dart';

import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        backgroundColor: CustomColor.scaffoldColor,
        // navigateWhere: isLoaded,
        navigateRoute: const HomePage(),
        text: WavyAnimatedText("Zacchaeus Oluwole",
            textStyle: const TextStyle(color: Colors.white, fontSize: 30)),
        imageSrc: 'profile_pic.png',
      ),
    );
  }
}
