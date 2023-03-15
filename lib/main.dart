import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:multi_animation_demo/get/get_routes.dart';
import 'package:multi_animation_demo/screens/screen_my_clock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ticker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyClockScreen(),
     //home: MyClockStateScreen(),
      getPages: AppPages.pages,
      
    );
  }
}
