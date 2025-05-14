import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/textfiled_controller.dart';

class TextfiledBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>TextfiledController());
  }
  
}