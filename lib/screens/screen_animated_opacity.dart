import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';
import 'package:multi_animation_demo/widgets/custom_drawer.dart';

class AnimatedOpacityScreen extends StatelessWidget {
  static String pageId = '/screenAnimatedOpacity';
  final controllerr = Get.put(AnimatedOpacityController());

  AnimatedOpacityScreen({Key? key}) : super(key: key);

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
                 AnimatedOpacity(duration: Duration(seconds: 2),
                  opacity: controllerr.myOPacity.value,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),

                ),
                const SizedBox(height: 10,),
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
