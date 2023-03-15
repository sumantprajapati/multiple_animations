import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';
import 'package:multi_animation_demo/widgets/custom_drawer.dart';

class ExpandedCardScreen extends GetView<ExpandedCardController> {
  static String pageId = '/screenExpandedCard';
  final controllerr = Get.put(ExpandedCardController());

  ExpandedCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(animation: controllerr.animationController,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
              appBar: AppBar(title: const Text('Expanded Card Animation'),),
              body:Center(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){},
                                child: const Text('OK')),
                            const SizedBox(width: 10,),
                            ElevatedButton(onPressed: (){
                              controllerr.animationController.reverse();
                            },
                                child: const Text('Cancel')),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                          transform:Matrix4.translationValues(0, controllerr.animation.value * width , 0),
                          child: const Center(
                            child: Text('Single tap for expand and double tap for reset',
                            textAlign: TextAlign.center,),
                          ),
                        ),
                        onTap:(){ controllerr.animationController.forward();},
                        onDoubleTap:(){ controllerr.animationController.reverse();}

                    ),
                    )
                  ],
                ),
              ),

              drawer: CustomDrawer(),);
        }
    );
  }
}
