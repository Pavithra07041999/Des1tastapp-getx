import 'package:get/get.dart';
import 'package:gps1taskapp/bindings/color_shift_binding.dart';
import 'package:gps1taskapp/bindings/fetching_data_binding.dart';
import 'package:gps1taskapp/bindings/home_binding.dart';
import 'package:gps1taskapp/bindings/item_list_binding.dart';
import 'package:gps1taskapp/bindings/splash_binding.dart';
import 'package:gps1taskapp/bindings/textfiled_binding.dart';
import 'package:gps1taskapp/view/color_shift_screen.dart';
import 'package:gps1taskapp/view/fetching_data_screen.dart';
import 'package:gps1taskapp/view/home_page.dart';
import 'package:gps1taskapp/view/item_list_view_screen.dart';
import 'package:gps1taskapp/view/second_screen.dart';
import 'package:gps1taskapp/view/splash_screen.dart';
import 'package:gps1taskapp/view/textfield_screen.dart';

class AppRoutes {
  static const String initialRoute = "/splash_screen.dart";

  //homeScreen 

  static const String homePage = "/home_page.dart";
  static const String colorShiftScreen = "/color_shift_screen.dart";
  static const String itemListScreen = "/item_list_view_screen.dart";
  static const String textFiledScreen = "/extfiled_screen.dart";
  static const String fetchingDataScreen = "/fetching_data_screen.dart";
  static const String secondScreen = "/second_screen.dart";

  static List<GetPage> pages  =[
    GetPage(name: initialRoute, page:()=> SplashScreen(),bindings: [SplashBinding()]),
    GetPage(name: homePage, page: ()=>HomePage(),bindings: [HomePageBinding()]),
    GetPage(name: colorShiftScreen, page: ()=>ColorShiftScreen(),bindings: [ColorShiftBinding()]),
    GetPage(name: itemListScreen ,page: ()=>ItemListViewScreen(),bindings: [ItemListBinding()]),
    GetPage(name: textFiledScreen, page: ()=>TextfieldScreen(),bindings: [TextfiledBinding()]),
    GetPage(name: fetchingDataScreen, page: ()=>FetchingDataScreen(),bindings: [FetchingDataBinding()]),
     GetPage(name: secondScreen, page: ()=>SecondScreen(),bindings: [HomePageBinding()]),
  ];
}