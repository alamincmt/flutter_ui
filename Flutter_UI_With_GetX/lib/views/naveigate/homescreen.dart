import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'next_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  CounterController ct = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Getx Practice"),),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Hello start getx"),
              ),
              SizedBox(height: 10,),
              Center(
                child: Obx((){
                  return Text("Update count is ${ct.count.value}");
                }
                ),
              ),
              SizedBox(height: 10,),
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
              ElevatedButton(onPressed: (){
                showBottomSheets();
              }, child: Text("Show Bottomsheet"),style: ElevatedButton.styleFrom(
                primary: Colors.green,
                // side: BorderSide(color: Colors.yellow, width: 5),
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Get.to(NewPage(),transition: Transition.downToUp,opaque: true,curve: Curves.bounceIn,);
              }, child: Text("Next Page"),style: ElevatedButton.styleFrom(
                primary: Colors.green,
                // side: BorderSide(color: Colors.yellow, width: 5),
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ct.increament();
            print(ct.count);
          },
          child: Icon(Icons.add),
        ),
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

  showBottomSheets() {
    Get.bottomSheet(
      Container(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data 1"),
            Text("Data 2"),
            Text("Data 3"),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
      barrierColor: Colors.teal,
      elevation: 1,
      enableDrag: true,
      enterBottomSheetDuration: Duration(seconds: 2),
      exitBottomSheetDuration: Duration(seconds: 3),
    );
  }
}
