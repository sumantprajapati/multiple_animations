import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';
import 'package:multi_animation_demo/widgets/custom_drawer.dart';

class AnimatedCrossFadeScreen extends GetView<AnimatedCrossFadeController> {
  static String pageId = '/screenAnimatedCrossFade';
  final controllerr = Get.put(AnimatedCrossFadeController());

  AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Cross Fade'),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                firstChild: const FlutterLogo(
                  size: 200,
                ),
                secondChild: Image.asset(
                  'assets/images/android-logo-transparent-png-svg-vector-2.png',
                  width: 200,
                  height: 200,
                ),
                crossFadeState: controllerr.isFirst.value
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                // reverseDuration: const Duration(seconds: 2),
                duration: const Duration(seconds: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (controllerr.isFirst.isTrue) {
                    controllerr.isFirst.value = false;
                  } else {
                    controllerr.isFirst.value = true;
                  }
                },
                child: const Text('Change Widget'),
              ),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
