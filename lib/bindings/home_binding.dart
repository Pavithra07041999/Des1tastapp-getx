import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/home_controller.dart';

class HomePageBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>HomePageController());
  
  }
  
}