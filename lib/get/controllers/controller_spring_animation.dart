import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:get/get.dart';

class SpringAnimationController extends GetxController
    with GetSingleTickerProviderStateMixin{
   late Rx<Alignment> dragAlignment  = Alignment.center.obs;
  late Animation<Alignment> animation;
  late AnimationController animationController;



  @override
  void onInit() {
        super.onInit();
        animationController = AnimationController(vsync: this,);
        animationController.addListener(() {
          dragAlignment.value = animation.value;
    });
  }
  void startAnimation(Offset pixelsPerSecond, Size size){
    animation = animationController.drive(AlignmentTween(
        begin: dragAlignment.value,
        end: Alignment.center
    ));
    final unitePerSecondX = pixelsPerSecond.dx / size.width ;
    final unitePerSecondY = pixelsPerSecond.dy / size.height;
    final unitePerSecond = Offset(unitePerSecondX, unitePerSecondY);
    final uniteVelocity = unitePerSecond.distance;
    const spring = SpringDescription(mass: 30, stiffness: 1, damping: 1);
    final simulation  = SpringSimulation(spring, 0, 1, -uniteVelocity);
    animationController.animateWith(simulation);
    //animationController.reset();
    //animationController.forward();
  }

}