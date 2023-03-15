import 'package:get/get.dart';

class AnimatedOpacityController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var myOPacity = 0.0.obs;

  void startAnimation() {
    myOPacity.value = 1.0;
  }
}
