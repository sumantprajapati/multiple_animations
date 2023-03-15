import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers.dart';

class BindingAnimatiomOne implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<AnimationOneController>(() => AnimationOneController());
  }

}