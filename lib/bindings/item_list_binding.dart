import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/item_list_controller.dart';

class ItemListBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>ItemListController());
  }

}