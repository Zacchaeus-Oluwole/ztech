import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/constants/nav_items.dart';
import 'package:ztech_portfolio/styles/style.dart';
import 'package:ztech_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  // final List<GlobalKey> navigatorKeys;
  final Function(int ) onNavMenuTap;

  const HeaderDesktop({super.key, required this.onNavMenuTap});

  // void scrollToSection(BuildContext context){
  //   Scrollable.ensureVisible(
  //     context,
  //     duration: const Duration(milliseconds: 600),
  //   );

  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0
      ),
      width: double.maxFinite,
      // color: Colors.blueGrey,
      decoration: HeaderDecoration,
      child: Row(
        children: [
          // Site Logo
          SiteLogo(
            onTap: () {

            },
          ),

          const Spacer(),
          for (int i = 0; i < navTiles.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: TextButton(
              onPressed: () {
                onNavMenuTap(i);
                // scrollToSection(navigatorKeys[i].currentContext!);
              },
              child: Text(
                navTiles[i],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrimary
                ),
              ),
            ),
          ),
          // SizedBox(width: 5,)
        ],
      ),
    );
  }
}