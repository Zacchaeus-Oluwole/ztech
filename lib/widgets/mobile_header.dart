import 'package:flutter/material.dart';
import 'package:ztech_portfolio/styles/style.dart';
import 'package:ztech_portfolio/widgets/site_logo.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key, this.onTapLogo, this.onTapMenu});
  final VoidCallback? onTapLogo;
  final VoidCallback? onTapMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(40,5,20,5),
            decoration: HeaderDecoration,
            child: Row(
              children: [
                SizedBox(width: 15.0,),
                SiteLogo(
                  onTap: (){},
                ),
                const Spacer(),
                IconButton(
                  onPressed: onTapMenu, 
                  icon: const Icon(Icons.menu)
                ),
                SizedBox(width: 15.0,),
              ],
            ),

          );
  }
}