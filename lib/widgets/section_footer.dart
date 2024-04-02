import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      child: Text(
        "Developed by Zacchaeus Oluwole with Flutter 3.16.9",
        style: TextStyle(
          color: CustomColor.whiteSecondary, 
          fontWeight: FontWeight.w600
        ),
      ),
      // color: Colors.blueGrey,
    );
  }
}