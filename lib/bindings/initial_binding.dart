import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/spalsh_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SpalshController());
  }
  
}