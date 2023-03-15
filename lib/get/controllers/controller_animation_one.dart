import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationOneController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  var isAnimating = false.obs;
  var height = 0.0.obs;
  var width = 0.0.obs;


  @override
  void onInit() {
    super.onInit();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = (Tween<double>(begin: 0, end: 200).animate(animationController)
      ..addListener(() {
        height.value = animation.value;
        width.value = animation.value;
      }));
    animationController.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        isAnimating.value = false;
        animationController.reset();
      }
    });
    //animationController.forward();
  }
  startAnimation(){
    if(animationController.isAnimating){
      isAnimating.value = false;
      animationController.stop();
    }else{
        isAnimating.value = true;
        animationController.forward();
    }
}

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
