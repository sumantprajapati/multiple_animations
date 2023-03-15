import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';
import 'package:multi_animation_demo/widgets/custom_drawer.dart';


class AnimationOneScreen extends GetView<AnimationOneController> {
  static String pageId = '/screenAnimationOne';

  final controllerr = Get.put(AnimationOneController());

  AnimationOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation One')),
      body: Center(
        child:
        Obx(() =>
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               MaterialButton(onPressed: (){
                 controllerr.startAnimation();
                 //controllerr.animationController.forward();
                // controllerr.animationController.repeat();
               },
                   child: Text(controllerr.isAnimating.value == true ? 'Stop' : 'Start' ,
                     style: TextStyle(fontSize: 20, color: Theme.of(context).indicatorColor,fontWeight: FontWeight.bold),)),
               SizedBox(height: 200,
                 child: Container(
                  height: controllerr.height.value,
                  width: controllerr.width.value,
                  child: const FlutterLogo(),
          ),
               ),
             ],
           ),
        ),

      ),
      drawer: CustomDrawer(),
    );
  }
}
