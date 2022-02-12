import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/provider/controller/counter_controller.dart';
import 'package:state_managment/provider/view/odd_even.dart';


class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building CounterView');
    return ChangeNotifierProvider(
      create: (buildContext) => CounterController(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Counter'),
              OddEvenView(),
            ],
          ),
        ),
        floatingActionButton: Builder(builder: (controllerContext) {
          return FloatingActionButton(
            onPressed: () {
              Provider.of<CounterController>(controllerContext, listen: false)
                  .updateCounter();
            },
            child: const Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
