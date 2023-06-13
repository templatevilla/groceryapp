import 'package:get/get.dart';

class HomeMainScreenController extends GetxController{
  RxInt position = 0.obs;
  onChange(int value) {
    position.value = value;
    update();
  }
}