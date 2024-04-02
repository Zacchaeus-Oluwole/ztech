import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: const Text(
        "ZTech",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowSecondary
        ),
      ),
    );
  }
}