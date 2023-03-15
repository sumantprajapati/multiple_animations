import 'package:flutter/material.dart';

class CustomDraggableCard extends StatelessWidget {
  final Widget child;
  final Alignment align;

  const CustomDraggableCard({Key? key, required this.child, required this.align})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: Card(
        child: child,
      ),
    );
  }
}