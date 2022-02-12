import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/getx/controller/counter_getx_controller.dart';

class OddOrEvenGetx extends StatelessWidget {
  const OddOrEvenGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CounterGetxController>(
      builder: (controller) {
        return Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 30,
              width: controller.isEven ? 100 : 50,
              color: controller.isEven ? Colors.green : Colors.red,
              child: const Center(child: Text('Even')),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 30,
              width: !controller.isEven ? 100 : 50,
              color: !controller.isEven ? Colors.green : Colors.red,
              child: const Center(child: Text('ODD')),
            ),
          ],
        );
      },
    );
  }
}
