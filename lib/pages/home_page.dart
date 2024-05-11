import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/constants/size.dart';
import 'package:ztech_portfolio/widgets/section_article.dart';
import 'package:ztech_portfolio/widgets/section_contact.dart';
import 'package:ztech_portfolio/widgets/section_footer.dart';
import 'package:ztech_portfolio/widgets/header_desktop.dart';
import 'package:ztech_portfolio/widgets/main_desktop.dart';
import 'package:ztech_portfolio/widgets/main_mobile.dart';
import 'package:ztech_portfolio/widgets/mobile_drawer.dart';
import 'package:ztech_portfolio/widgets/mobile_header.dart';
import 'package:ztech_portfolio/widgets/section_projects.dart';
import 'package:ztech_portfolio/widgets/section_services.dart';
import 'package:ztech_portfolio/widgets/skills_desktop.dart';
import 'package:ztech_portfolio/widgets/skills_modile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  List<GlobalKey> navigatorKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),

  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldColor,
          endDrawer: constraints.maxWidth >= MinDesktopWidth 
          ? null 
          : MobileDrawer( onNavItemTap: (int navIndex){
            // 
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              
              children: [
                // MAIN
                // Desktop Header'
                if(constraints.maxWidth >= MinDesktopWidth)
                  HeaderDesktop( onNavMenuTap: (int navIndex){
                    // 
                    scrollToSection(navIndex);
                  },
                  key: navigatorKeys[0]
                )
                else
                // Mobile Header
                  MobileHeader(
                    key: navigatorKeys[0],
                    
                    onTapLogo: () {
            
                    },
                    onTapMenu: (){
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                  // MainDesktop
                  // MainMobile
                if(constraints.maxWidth >= MinDesktopWidth)
                  MainDesktop(onNavMenuTap: (int navIndex) { scrollToSection(navIndex); },)
                else 
                  MainMobile(onNavItemTap: (int navIndex) { scrollToSection(navIndex); },),
                  
                
                // SKILLS
                Container(
                  key: navigatorKeys[1],
                  padding: EdgeInsets.fromLTRB(25, 2, 25, 2),
                  child: Container(
                    // height: 500,
                    width: screenWidth,
                    color: CustomColor.Light1Color,
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "What i can do",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        const SizedBox(height: 50,),
                        // Platform and Skills
                        if(constraints.maxWidth >= MedDesktopWidth)
                          const SkillDesktop()
                        else
                          const SkillMobile()
                        
                      ],
                    ),
                  ),
                ),
                // SERVICES
                ServiceSection(key: navigatorKeys[2], screenWidth: screenWidth),
            
                const SizedBox(height: 0,),
                // PROJECTS
                ProjectSection(key: navigatorKeys[3], screenWidth: screenWidth),
                const SizedBox(height: 0,),
            
                // // Articles
                ArticleSection(key: navigatorKeys[4], screenWidth: screenWidth),
                // CONTACTS
                ContactSection(key: navigatorKeys[5]),
                const SizedBox(height: 30,),
            
                // FOOTER
                const FooterSection(),
                const SizedBox(height: 50,),
                    
              ],
            ),
          ),
        );
      }
    );
  }
  void scrollToSection(int navIndex){
    
    final key = navigatorKeys[navIndex];

    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );

  }
}









