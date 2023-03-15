import 'dart:math';

import 'package:flutter/material.dart';


class CustomClock extends StatelessWidget {
  final DateTime dateTime;
  const CustomClock({Key? key, required this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.black),
        borderRadius: BorderRadius.circular(200),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 100,
            right: 95,
            child:Transform(
              alignment: Alignment.topCenter,
              transform: Matrix4.rotationZ(pi + pi / 12 * 2 * dateTime.hour),
              child: Container(height: 50, width: 5, color: Colors.black,),
            ),
          ),
          Positioned(
            top: 100,
            right: 95,
            child:Transform(
              alignment: Alignment.topCenter,
              transform: Matrix4.rotationZ(pi + pi / 60 * 2 * dateTime.minute),
              child: Container(height: 80, width: 5, color: Colors.grey,),
            ),
          ),
          Positioned(
            top: 100,
            right: 100.5,
            child:Transform(
              alignment: Alignment.topCenter,
              transform: Matrix4.rotationZ(pi + pi / 60 * 2 * dateTime.second),
              child: Container(height: 80, width: 2, color: Colors.red,),
            ),
          ),
        ],
      ),

    );
  }
}
