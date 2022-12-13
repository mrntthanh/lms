import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bindings/AppBinding.dart';
import '../controllers/home_controller.dart';

void main() {
  return runApp(GetMaterialApp(
    initialBinding: AppBinding(),
    home: const HomeScreen()
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(context) {
    HomeController controller = Get.find<HomeController>();
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Obx(() => Text("Clicks: ${controller.count.value}"))),
      body: Center(
          child: ElevatedButton(
            child: Obx(() => Text("Go to Other ${controller.count.value}")), 
            onPressed: () => Get.to(Other())
          )
        ),

      floatingActionButton:
          FloatingActionButton(onPressed: controller.increment, child: const Icon(Icons.add))
    );
  }
}

// Sample. need to remove
class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  Other({super.key});

  final HomeController c = Get.find();

  @override
  Widget build(context){
     // Access the updated count variable
     return Scaffold(body: Center(child: Text("${c.count.value}")));
  }
}
