import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_animation_demo/get/screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: const UserAccountsDrawerHeader(
                  accountName: Text('Sumant'),
                  accountEmail: Text('test@phpdots.com'),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    child: Text('S'),
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.watch_later),
              title: const Text('Analog Clock'),
              onTap: () {
                Get.toNamed(MyClockScreen.pageId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Hero Animation'),
              onTap: (){
                Get.toNamed(HeroAnimationScreen.pageId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Animation'),
              onTap: (){
                Get.toNamed(AnimationOneScreen.pageId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Animated Container'),
              onTap: (){
                Get.toNamed(AnimatedContainerScreen.pageId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Animated Opacity'),
              onTap: (){
                Get.toNamed(AnimatedOpacityScreen.pageId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Spring Animation'),
              onTap: (){
                Get.toNamed(SpringAnimationScreen.pageId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Expanded Card Animation'),
              onTap: (){
                Get.toNamed(ExpandedCardScreen.pageId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Animated Cross Fade'),
              onTap: (){
                Get.toNamed(AnimatedCrossFadeScreen.pageId);
              },
            ),

          ],
        ));
  }
}
