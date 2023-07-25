import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Hello start getx"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  showSnackBar() {
    Get.snackbar("This is title", "This is message",
        duration: Duration(
          seconds: 3,
        ),
        dismissDirection: DismissDirection.horizontal,
        colorText: Colors.red,
        borderRadius: 5,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        barBlur: 3);
  }
}
