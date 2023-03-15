import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';

class BindingSpringAnimation implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SpringAnimationController>(() => SpringAnimationController());
  }

}