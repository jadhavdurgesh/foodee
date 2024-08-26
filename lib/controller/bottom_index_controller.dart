import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BottomIndexController extends GetxController {
  RxInt _index = 0.obs;
  int get index => _index.value;

  set setBottomIndex(int newValue){
    _index.value = newValue;
  }
}