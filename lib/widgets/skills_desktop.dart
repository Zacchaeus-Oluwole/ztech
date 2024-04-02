import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/constants/skill_items.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Platform
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: CustomColor.Light2Color,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10.0
                  ),
                  leading: Image.asset(
                    platformItems[i]['img'],
                    width: 26.0,
                  ),
                  title: Text(platformItems[i]['title']),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 50,),
        // Skills
        Flexible(
          child: ConstrainedBox(
            constraints:  const BoxConstraints(
              maxWidth: 500.0,
            ),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for(int i = 0; i < skillItems.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0
                  ),
                  backgroundColor: CustomColor.Light2Color,
                  label: Text(skillItems[i]['title']),
                  avatar: Image.asset(skillItems[i]['img']),
                )
              ],
            ),
          ),
        )

      ],
    );
  }
}