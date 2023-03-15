import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:multi_animation_demo/get/controllers.dart';

import 'package:multi_animation_demo/widgets/custom_drawer.dart';
import 'package:multi_animation_demo/widgets/custom_clock.dart';

class MyClockScreen extends GetView<MyClockController> {
  static String pageId = '/ScreenMyClock';
  final controllerr = Get.put(MyClockController());

  MyClockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Clock'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomClock(dateTime: controllerr.now.value),
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}

