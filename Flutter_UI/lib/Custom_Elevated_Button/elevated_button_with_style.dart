import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElevateedButtonWithStyle extends StatelessWidget {
  const ElevateedButtonWithStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Hello start getx"),
          ),
          ElevatedButton(onPressed: (){
            showSnackBar();
          }, child: Text("Show Snackbar"),style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontStyle: FontStyle.normal),
          ),
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
