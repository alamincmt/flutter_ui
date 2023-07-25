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
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){}, child: Text("text"),style: ElevatedButton.styleFrom(
            primary: Colors.green,
            // side: BorderSide(color: Colors.yellow, width: 5),
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),),
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
