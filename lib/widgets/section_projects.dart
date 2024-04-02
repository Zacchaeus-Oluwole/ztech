import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/widgets/project_card.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 2, 25, 2),
      child: Container(
        // height: 500,
        // width: double.maxFinite,
        color: CustomColor.Light1Color,
        width: widget.screenWidth,
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        child: Column(
          children: [
            // Work Projects title
            const Text(
              "Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            SizedBox(height: 50,),
            // Work Projects cards
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 900,
              ),
              child: ProjectsCard(),
            ),
            const SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}