import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';
import 'package:ztech_portfolio/utils/services_utils.dart';
// import 'dart:js' as js;

class ServiceCard extends StatelessWidget {
  final ServiceUtils service;
  const ServiceCard({
    super.key,
    required this.service
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290.0,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.Light2Color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
    
            child: Center(
              child: Text(
                service.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
          ),
          // Subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              service.subtitle,
              // textAlign: TextAlign.justify,
              style: const TextStyle(
                wordSpacing: 0.5,
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          // const Spacer(),
          // // footer
          // Container(
          //   color: CustomColor.Light3Color,
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 12,
          //     vertical: 10
          //   ),
          //   child: Row(
          //     children: [
          //       const Text(
          //         "Available on",
          //         style: TextStyle(
          //           color: CustomColor.yellowSecondary,
          //           fontSize: 10
          //         ),
          //       ),
          //       const Spacer(),

          //       if(service.mediumLink != null)
          //       InkWell(
          //           onTap: () {
          //             // 
          //             js.context.callMethod('open', [service.mediumLink]);
          //           },
          //         child: Image.asset(
          //           'assets/medium.png',
          //           width: 17,
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}