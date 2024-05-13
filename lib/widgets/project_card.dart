import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/widgets/project_content.dart';


class ProjectsCard extends StatefulWidget {
  ProjectsCard({
    super.key,
  });

  @override
  State<ProjectsCard> createState() => _ProjectsCardState();
}

class _ProjectsCardState extends State<ProjectsCard> {

  Color flutterColor = CustomColor.Light2Color;
  Color rustColor = Color.fromARGB(255, 58, 62, 80);
  Color iotColor = Color.fromARGB(255, 58, 62, 80);

  Widget projectContent = FlutterProjectContent();

  void changeProject(int index) {
    setState(() {
      if (index == 0) {
        flutterColor = CustomColor.Light2Color;
        rustColor = Color.fromARGB(255, 58, 62, 80);
        iotColor = Color.fromARGB(255, 58, 62, 80);
        projectContent = FlutterProjectContent();
      } else if (index == 1) {
        flutterColor = Color.fromARGB(255, 58, 62, 80);
        rustColor = CustomColor.Light2Color;
        iotColor = Color.fromARGB(255, 58, 62, 80);
        projectContent = RustProjectContent();
      } else {
        flutterColor = Color.fromARGB(255, 58, 62, 80);
        rustColor = Color.fromARGB(255, 58, 62, 80);
        iotColor = CustomColor.Light2Color;
        projectContent = IoTProjectContent();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColor.Light2Color,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        changeProject(0);
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                        color: flutterColor,
                        child: Center(
                          child: Text(
                            "Flutter",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        changeProject(1);
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                        color: rustColor,
                        child: Center(
                          child: Text(
                            "Rust",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        changeProject(2);
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                        color: iotColor,
                        child: Center(
                          child: Text(
                            "IoT",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Subtitle
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                child: Column(
                  children: [
                    projectContent,
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}

