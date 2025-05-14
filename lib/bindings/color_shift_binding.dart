import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/color_shift_controller.dart';

class ColorShiftBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>ColorShiftController());
  }
  
}