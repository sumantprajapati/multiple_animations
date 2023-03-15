import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/screens.dart';
import 'package:multi_animation_demo/widgets/custom_drawer.dart';

class HeroAnimationScreen extends StatelessWidget {
  static String pageId = '/screenHeroAnimation';

  const HeroAnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){ Get.toNamed(HeroAnimationLargeScreen.pageId);},
            child: Hero(
              tag: 'hero',
              child: Image.asset('assets/images/dancing-dave-minion.jpeg',
                height: 100,width: 200,),
            )),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
