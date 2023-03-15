import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroAnimationLargeScreen extends StatelessWidget {
  static String pageId = '/screenHeroAnimationLarge';

  const HeroAnimationLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: Column(
        children: [
          Hero(
              tag: 'hero',
              child: Image.asset(
                'assets/images/dancing-dave-minion.jpeg',
              )),
        ],
      ),
    );
  }
}
