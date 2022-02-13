import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/provider/view/counter_view.dart';
import 'package:state_managment/usage_of_package/package_example.dart';

import 'bubby_code/buggy_screen.dart';
import 'getx/view/getx_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PackageExample(),
    );
  }
}
