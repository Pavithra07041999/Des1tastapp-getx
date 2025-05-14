import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/spalsh_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>SpalshController());
  }
  
}