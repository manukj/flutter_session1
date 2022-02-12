import 'package:flutter/material.dart';
import 'package:state_managment/provider/model/counter_model.dart';


class CounterController extends ChangeNotifier {
  late CounterModel counterModel;

  CounterController() {
    counterModel = CounterModel();
  }

  void updateCounter() {
    counterModel.counter++;
    counterModel.isEven = counterModel.counter % 2 == 0;
    notifyListeners();
  }
}
