
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class MyClockController extends GetxController
    with GetSingleTickerProviderStateMixin {

   Rx<DateTime> now =  DateTime.now().obs;
   DateTime initialTime = DateTime.now();
  late Ticker ticker;

  @override
  void onInit() {
   // changeTime();
    super.onInit();
    now.value = initialTime = DateTime.now();
    print(now.value);
    ticker = createTicker((elapsed) {
      final newTime = initialTime.add(elapsed);

      // now.value = newTime ;

     // print(elapsed);
      if (now.value.second != newTime.second) {
        now.value = newTime;

        // now = DateTime.now();
      }
     // update();
    });

    ticker.start();
  }
  @override
  void onClose() {
    ticker.dispose();
    super.onClose();
  }
}

