import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/constants/sms_links.dart';
import 'package:ztech_portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatefulWidget {
  

  const ContactSection({
    super.key,
  });

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final TextEditingController subject = TextEditingController();
  final TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 2, 25, 60),
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
        color: CustomColor.Light1Color,
        child: Column(
          children: [
            Text(
              "Get in touch",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 900
              ),
              child: const Divider()
            ),
            const SizedBox(height: 30,),
      
            //  SMS icon button link
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [

                InkWell(
                  onTap: ()async{
                      String email = Uri.encodeComponent(smsLinks.gmail);
                      Uri mail = Uri.parse("mailto:$email");
                      if (await launchUrl(mail)) {
                          //email app opened
                          print("Email sent successfully");
                      }else{
                          //email app is not opened
                          print("Error occured");
                      }
                  },
                  child: Image.asset("assets/gmail.png",width: 27,),
                ),
                
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [smsLinks.linkedin]);
                  },
                  child: Image.asset("assets/linkedin.png",width: 27,),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [smsLinks.twitter]);
                  },
                  child: Image.asset("assets/twitter.png", width: 24,),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [smsLinks.medium]);
                  },
                  child: Image.asset("assets/medium.png",width: 32,)
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [smsLinks.youtube]);
                  },
                  child: Image.asset("assets/youtube.png",width: 30,)
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [smsLinks.github]);
                  },
                  child: Image.asset("assets/github.png",width: 30,)
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
  nameEmailDesktop(subject) {
    return Row(
      children: [
        Flexible(
          child: CustomTextField(
            controller: subject,
            hintText: "Subject",
          )
        ),
      ],
    );
  }

  nameEmailMobile(subject) {
    return Column(
      children: [
        Flexible(
          child: CustomTextField(
            controller: subject,
            hintText: "Subject",
          )
        ),
      ],
    );
  }
}