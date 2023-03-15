import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';

class BindingAnimatedOpacity implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AnimatedOpacityController>(() => AnimatedOpacityController());
  }

}