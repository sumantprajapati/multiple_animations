import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';
import 'package:multi_animation_demo/widgets/custom_draggable_card.dart';
import 'package:multi_animation_demo/widgets/custom_drawer.dart';

class SpringAnimationScreen extends GetView<SpringAnimationController> {
  static String pageId = '/screenSpringAnimation';
  final controllerr = Get.put(SpringAnimationController());

  SpringAnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spring Animation'),
      ),
      body: Obx(() =>
        GestureDetector(
          onPanDown: (details) {
            controllerr.animationController.stop();
          },
          onPanUpdate: (details) {
            controllerr.dragAlignment.value += Alignment(
              details.delta.dx / (size.width / 2),
              details.delta.dy / (size.height / 2),
            );
          },
          onPanEnd: (details) {
            controllerr.startAnimation(details.velocity.pixelsPerSecond, size);
          },
          child: CustomDraggableCard(
            align: controllerr.dragAlignment.value,
            child: const FlutterLogo(
              size: 125,
            ),
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}


