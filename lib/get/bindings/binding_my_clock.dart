import 'package:get/get.dart';
import 'package:multi_animation_demo/get/controllers/controller_my_clock.dart';

class BindingMyClock implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MyClockController>(() => MyClockController());
  }

}