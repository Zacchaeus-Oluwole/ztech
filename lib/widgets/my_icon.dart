import 'package:flutter/material.dart';

class MyIcon extends StatefulWidget {
  final VoidCallback onTap;
  final bool direction;
  const MyIcon({super.key, required this.onTap, required this.direction});

  @override
  State<MyIcon> createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> {
  bool checkState = false;

  onHover(){
    setState(() {
      checkState = !checkState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: checkState == true ? BoxDecoration(
        color: Color.fromARGB(255, 122, 127, 148),
        borderRadius: BorderRadius.circular(10)
      ): BoxDecoration(),
      child: InkWell(
        onHover: (s){onHover();},
        onTap: widget.onTap,
        child: Image.asset(
          widget.direction
          ?
          'assets/arrow_up.png'
          :
          'assets/arrow_down.png',
          width: 17,
        ),
      ),
    );
  }
}