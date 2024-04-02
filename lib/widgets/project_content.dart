import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/utils/content_utils.dart';
import 'package:ztech_portfolio/widgets/my_icon.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class FlutterProjectContent extends StatefulWidget {
  const FlutterProjectContent({super.key});

  @override
  State<FlutterProjectContent> createState() => _FlutterProjectContentState();
}

class _FlutterProjectContentState extends State<FlutterProjectContent> {

  List<ContentUtil> flutterProjects = [];

  @override
  void initState() {
    super.initState();
    // Filter projects with project type 'flutter'
    flutterProjects = contentUtil.firstWhere((content) => content.projecttype == 'flutter').project;
  }

  double height = 60;
  bool ontap = false;
  bool up = true;

  List<bool> ontapList = List.filled(contentUtil.firstWhere((content) => content.projecttype == 'flutter').project.length, false);
  List<bool> upList = List.filled(contentUtil.firstWhere((content) => content.projecttype == 'flutter').project.length, true);

  void checkState(int index) {
    setState(() {
      ontapList[index] = !ontapList[index];
      upList[index] = !upList[index];
    });
  }

  void increaseHeight(ontap){
    setState(() {
      if(ontap){
        for(double i = 60; i<= 500; i++){
          height = i;
        }
      }else{
        height= 60;
      }
      
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      child: Column(
        children: [
          Divider(thickness: 2,color: CustomColor.Light1Color,),
          for(int i = 0; i<flutterProjects.length; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text("${flutterProjects[i].id}. ${flutterProjects[i].title}")),
                    // Spacer(),
                    MyIcon(
                      onTap: (){
                        checkState(i);
                        increaseHeight(ontapList[i]);
                      }, 
                      direction: upList[i],
                    ),
                  ],
                ),
                if(ontapList[i])
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for(int j = 0; j<flutterProjects[i].description.length; j++)
                          Text("${flutterProjects[i].description[j]} \n"),
                          
                        // SizedBox(height: 20,),
                        Container(
                          color: CustomColor.Light3Color,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "Available on",
                                style: TextStyle(
                                  color: CustomColor.yellowSecondary,
                                  fontSize: 10
                                ),
                              ),
                              const Spacer(),
                  
                              // if(widget..mediumLink != null)
                              if(flutterProjects[i].linktype == 'medium')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [flutterProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/medium.png',
                                    width: 17,
                                  ),
                                ),

                              if(flutterProjects[i].linktype == 'github')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [flutterProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/github.png',
                                    width: 17,
                                  ),
                                ),

                              if(flutterProjects[i].linktype == 'youtube')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [flutterProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/youtube.png',
                                    width: 17,
                                  ),
                                ),

                              if(flutterProjects[i].linktype == 'link')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [flutterProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/link.png',
                                    width: 17,
                                  ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              Divider(thickness: 2,color: CustomColor.Light1Color,),
            ],
          ),
        ],
      ),
    );
  }
}

class RustProjectContent extends StatefulWidget {
  const RustProjectContent({super.key});

  @override
  State<RustProjectContent> createState() => _RustProjectContentState();
}

class _RustProjectContentState extends State<RustProjectContent> {

  List<ContentUtil> rustProjects = [];

  @override
  void initState() {
    super.initState();
    // Filter projects with project type 'flutter'
    rustProjects = contentUtil.firstWhere((content) => content.projecttype == 'rust').project;
  }

  double height = 60;
  bool ontap = false;
  bool up = true;

  List<bool> ontapList = List.filled(contentUtil.firstWhere((content) => content.projecttype == 'rust').project.length, false);
  List<bool> upList = List.filled(contentUtil.firstWhere((content) => content.projecttype == 'rust').project.length, true);

  void checkState(int index) {
    setState(() {
      ontapList[index] = !ontapList[index];
      upList[index] = !upList[index];
    });
  }

  void increaseHeight(ontap){
    setState(() {
      if(ontap){
        for(double i = 60; i<= 500; i++){
          height = i;
        }
      }else{
        height= 60;
      }
      
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      child: Column(
        children: [
          Divider(thickness: 2,color: CustomColor.Light1Color,),
          for(int i = 0; i<rustProjects.length; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text("${rustProjects[i].id}. ${rustProjects[i].title}")),
                    // Spacer(),
                    MyIcon(
                      onTap: (){
                        checkState(i);
                        increaseHeight(ontapList[i]);
                      }, 
                      direction: upList[i],
                    ),
                  ],
                ),
                if(ontapList[i])
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for(int j = 0; j<rustProjects[i].description.length; j++)
                          Text("${rustProjects[i].description[j]} \n"),
                          
                        // SizedBox(height: 20,),
                        Container(
                          color: CustomColor.Light3Color,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "Available on",
                                style: TextStyle(
                                  color: CustomColor.yellowSecondary,
                                  fontSize: 10
                                ),
                              ),
                              const Spacer(),
                  
                              // if(widget..mediumLink != null)
                              if(rustProjects[i].linktype == 'medium')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [rustProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/medium.png',
                                    width: 17,
                                  ),
                                ),

                              if(rustProjects[i].linktype == 'github')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [rustProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/github.png',
                                    width: 17,
                                  ),
                                ),

                              if(rustProjects[i].linktype == 'youtube')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [rustProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/youtube.png',
                                    width: 17,
                                  ),
                                ),

                              if(rustProjects[i].linktype == 'link')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [rustProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/link.png',
                                    width: 17,
                                  ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              Divider(thickness: 2,color: CustomColor.Light1Color,),
            ],
          ),
        ],
      ),
    );
  }
}

class IoTProjectContent extends StatefulWidget {
  const IoTProjectContent({super.key});

  @override
  State<IoTProjectContent> createState() => _IoTProjectContentState();
}

class _IoTProjectContentState extends State<IoTProjectContent> {

  List<ContentUtil> iotProjects = [];

  @override
  void initState() {
    super.initState();
    // Filter projects with project type 'flutter'
    iotProjects = contentUtil.firstWhere((content) => content.projecttype == 'iot').project;
  }

  double height = 60;
  bool ontap = false;
  bool up = true;

  List<bool> ontapList = List.filled(contentUtil.firstWhere((content) => content.projecttype == 'iot').project.length, false);
  List<bool> upList = List.filled(contentUtil.firstWhere((content) => content.projecttype == 'iot').project.length, true);

  void checkState(int index) {
    setState(() {
      ontapList[index] = !ontapList[index];
      upList[index] = !upList[index];
    });
  }

  void increaseHeight(ontap){
    setState(() {
      if(ontap){
        for(double i = 60; i<= 500; i++){
          height = i;
        }
      }else{
        height= 60;
      }
      
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      child: Column(
        children: [
          Divider(thickness: 2,color: CustomColor.Light1Color,),
          for(int i = 0; i<iotProjects.length; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text("${iotProjects[i].id}. ${iotProjects[i].title}")),
                    // Spacer(),
                    MyIcon(
                      onTap: (){
                        checkState(i);
                        increaseHeight(ontapList[i]);
                      }, 
                      direction: upList[i],
                    ),
                  ],
                ),
                if(ontapList[i])
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for(int j = 0; j<iotProjects[i].description.length; j++)
                          Text("${iotProjects[i].description[j]} \n"),
                          
                        // SizedBox(height: 20,),
                        Container(
                          color: CustomColor.Light3Color,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "Available on",
                                style: TextStyle(
                                  color: CustomColor.yellowSecondary,
                                  fontSize: 10
                                ),
                              ),
                              const Spacer(),
                  
                              // if(widget..mediumLink != null)
                              if(iotProjects[i].linktype == 'medium')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [iotProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/medium.png',
                                    width: 17,
                                  ),
                                ),

                              if(iotProjects[i].linktype == 'github')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [iotProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/github.png',
                                    width: 17,
                                  ),
                                ),

                              if(iotProjects[i].linktype == 'youtube')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [iotProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/youtube.png',
                                    width: 17,
                                  ),
                                ),

                              if(iotProjects[i].linktype == 'link')
                                InkWell(
                                    onTap: () {
                                      // 
                                      js.context.callMethod('open', [iotProjects[i].link]);
                                    },
                                  child: Image.asset(
                                    'assets/link.png',
                                    width: 17,
                                  ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              Divider(thickness: 2,color: CustomColor.Light1Color,),
            ],
          ),
        ],
      ),
    );
  }
}