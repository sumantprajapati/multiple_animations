import 'package:get/get.dart';
import 'package:multi_animation_demo/get/bindings.dart';
import 'package:multi_animation_demo/get/screens.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: MyClockScreen.pageId,
      page: () => MyClockScreen(),
      binding: BindingMyClock(),
    ),
    GetPage(
      name: AnimationOneScreen.pageId,
      page: () => AnimationOneScreen(),
      binding: BindingAnimatiomOne(),
    ),
    GetPage(
      name: AnimatedContainerScreen.pageId,
      page: () => AnimatedContainerScreen(),
      binding: BindingAnimatedContainer(),
    ),
    GetPage(
      name: AnimatedOpacityScreen.pageId,
      page: () => AnimatedOpacityScreen(),
      binding: BindingAnimatedOpacity(),
    ),
    GetPage(
      name: SpringAnimationScreen.pageId,
      page: () => SpringAnimationScreen(),
      binding: BindingSpringAnimation(),
    ),
    GetPage(
      name: ExpandedCardScreen.pageId,
      page: () => ExpandedCardScreen(),
      binding: BindingExpandedCard(),
    ),
    GetPage(
      name: AnimatedCrossFadeScreen.pageId,
      page: () => AnimatedCrossFadeScreen(),
      binding: BindingAnimatedCrossFade(),
    ),
    GetPage(
      name: HeroAnimationScreen.pageId,
      page: () => HeroAnimationScreen(),
      binding: BindingHeroAnimation(),
    ),
    GetPage(
      name: HeroAnimationLargeScreen.pageId,
      page: () => HeroAnimationLargeScreen(),
      binding: BindingHeroAnimation(),
    ),
  ];
}
