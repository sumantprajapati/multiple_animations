import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';

class BindingAnimatedCrossFade implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AnimatedCrossFadeController>(() => AnimatedCrossFadeController());
  }

}