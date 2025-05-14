import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/fetching_data_controller.dart';

class FetchingDataBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>FetchingDataController());
  }
  
}