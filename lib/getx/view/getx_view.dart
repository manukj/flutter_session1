import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:state_managment/getx/controller/counter_getx_controller.dart';
import 'package:state_managment/getx/view/odd_or_even_getx_view.dart';
import 'package:state_managment/getx/view/total_counter_screen.dart';

class GetXView extends StatelessWidget {
  GetXView({Key? key}) : super(key: key);
  final counterController = Get.put(CounterGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter'),
            Obx(
              () => Text(
                '${counterController.counter.value}',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const OddOrEvenGetx(),
            ElevatedButton(
              onPressed: () {
                Get.to(const TotalCounterScreen());
              },
              child: const Text('Go to Total Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.updateCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
