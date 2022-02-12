import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/getx/controller/counter_getx_controller.dart';

class TotalCounterScreen extends StatelessWidget {
  const TotalCounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetX<CounterGetxController>(
          builder: (controller) {
            return Text(controller.counter.toString());
          },
        ),
      ),
    );
  }
}
