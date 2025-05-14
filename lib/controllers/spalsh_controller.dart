import 'package:get/get.dart';
import 'package:gps1taskapp/routes/app_routes.dart';

class SpalshController extends GetxController{

  @override
  void onReady() {
   
     Future.delayed(const Duration(milliseconds: 3000), () {
       Get.offAllNamed(AppRoutes.homePage);
    });
  }

}