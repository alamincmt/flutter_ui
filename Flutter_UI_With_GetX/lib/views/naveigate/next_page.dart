import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class NewPage extends StatelessWidget {
  NewPage({Key? key}) : super(key: key);
  CounterController countValue = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Data get from previous page is : ${countValue.count}"),
        ],),
    );
  }
}
