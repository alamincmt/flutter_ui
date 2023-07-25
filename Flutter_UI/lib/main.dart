import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/views/home_page.dart';

import 'Custom_Elevated_Button/elevated_button_with_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ElevateedButtonWithStyle(),
    );
  }
}
