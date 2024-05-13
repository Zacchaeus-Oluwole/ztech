import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/constants/nav_items.dart';

class MobileDrawer extends StatelessWidget {
  final Function(int) onNavItemTap;
  const MobileDrawer({super.key, required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldColor,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20
                ),
                child: IconButton(onPressed: () {
                  Navigator.of(context).pop();
                }, 
                icon: Icon(Icons.close)),
              ),
            ),
            for (int i = 0; i<navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              titleTextStyle: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              leading: Icon(navIcons[i]),
              title: Text(navTiles[i]),
              onTap: () {
                onNavItemTap(i);
              }
              ,
            )
          ],
        ),
      );
  }
}