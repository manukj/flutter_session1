import 'package:get/get.dart';
import 'package:state_managment/getx/model/counter_getx_model.dart';

class CounterGetxController extends GetxController {
  var counter = 0.obs;

  get isEven => counter % 2 == 0;

  updateCounter() => counter++;
}
