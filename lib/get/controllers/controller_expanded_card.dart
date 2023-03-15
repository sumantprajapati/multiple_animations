import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandedCardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: -0.15).animate(
        CurvedAnimation(parent: animationController, curve: Curves.ease));
  }
}
