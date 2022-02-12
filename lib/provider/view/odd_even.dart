import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/provider/controller/counter_controller.dart';

class OddEvenView extends StatelessWidget {
  const OddEvenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building OddEvenView');
    return Consumer<CounterController>(
      builder: (context, controller, child) {
        print('building Counter');
        return Column(
          children: [
            Text(controller.counterModel.counter.toString()),
            Text(controller.counterModel.counter.isEven ? 'Even' : 'Odd')
          ],
        );
      },
    );
  }
}
