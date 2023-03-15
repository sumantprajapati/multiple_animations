import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';
import 'package:multi_animation_demo/widgets/custom_drawer.dart';

class AnimatedContainerScreen extends GetView<AnimatedContainerController> {
  static String pageId = '/screenAnimatedContainer';
  final controllerr = Get.put(AnimatedContainerController());

  AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body:
         Center(
          child:
          Obx(() =>
              Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Without Curve'),
              AnimatedContainer(duration: const Duration(seconds: 2),
                height: controllerr.containerHeight.value,
                width: controllerr.containerWidth.value,
                decoration: controllerr.myDecoration,

              ),
              const SizedBox(height: 10,),
              const Text('With Curve'),
              AnimatedContainer(duration: const Duration(seconds: 2),
                height: controllerr.containerHeight.value,
                width: controllerr.containerWidth.value,
                decoration: controllerr.myDecoration,
                curve: Curves.bounceOut,

              ),
              ElevatedButton(onPressed: (){
                controllerr.startAnimation();
              }, child: const Text('Start')),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
