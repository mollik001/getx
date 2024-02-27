import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/app/modules/home/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                controller.count1.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Obx(() => Text(
                controller.count2.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Obx(() => Text(
                controller.count3.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: controller.increamentCount1,
                  child: const Text('Increament1')),
              ElevatedButton(
                  onPressed: controller.increamentCount2,
                  child: const Text('Increament2')),
              ElevatedButton(
                  onPressed: controller.increamentCount3,
                  child: const Text('Increament3')),
            ],
          )
        ],
      ),
    );
  }
}
