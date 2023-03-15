import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';

class BindingAnimatedContainer implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<AnimatedContainerController>(() => AnimatedContainerController());
  }

}