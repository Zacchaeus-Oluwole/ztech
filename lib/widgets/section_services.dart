import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/utils/article_utils.dart';
import 'package:ztech_portfolio/utils/services_utils.dart';
import 'package:ztech_portfolio/widgets/services_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 2, 25, 2),
      child: Container(
        // height: 500,
        // width: double.maxFinite,
        color: CustomColor.Light1Color,
        width: screenWidth,
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        child: Column(
          children: [
            const Text(
              "Services",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 50,),
            // Work Projects cards
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 900,
              ),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for (int i = 0; i < articleUtil.length; i++)
                  ServiceCard(service: serviceUtil[i],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}