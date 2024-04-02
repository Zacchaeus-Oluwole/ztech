import 'package:flutter/material.dart';
import 'package:ztech_portfolio/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final int maxLines ;
  final String? hintText;
  
  const CustomTextField({
    super.key, 
    this.controller, 
    this.maxLines = 1, 
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(
        color: CustomColor.scaffoldColor
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(
          color: CustomColor.hintDark,
        )
      ),
    );
  }
  OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10), 
      borderSide: BorderSide.none
    );
  }
}