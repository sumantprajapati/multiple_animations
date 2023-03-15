import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedContainerController extends GetxController{
  var containerHeight = 100.0.obs;
  var containerWidth = 200.0.obs;
  var isStart = false.obs;

  var bgColor = Colors.red.obs;
  Decoration myDecoration = BoxDecoration(borderRadius: BorderRadius.circular(2), color: Colors.red);

  startAnimation(){
    if(isStart.isFalse){
      containerHeight.value =200;
      containerWidth.value =100;

      myDecoration = BoxDecoration(borderRadius: BorderRadius.circular(50),color:  bgColor.value =Colors.blue);
      isStart.value =true;
    }else{
      containerHeight.value = 100;
      containerWidth.value = 200;

      myDecoration = BoxDecoration(borderRadius: BorderRadius.circular(2), color:  bgColor.value = Colors.red);
      isStart.value = false;
  }
  }


}