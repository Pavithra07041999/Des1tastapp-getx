import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:gps1taskapp/bindings/initial_binding.dart';
import 'package:gps1taskapp/core/constant/colors.dart';
import 'package:gps1taskapp/routes/app_routes.dart';

import 'package:gps1taskapp/view/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GS1 India TasksApp',
      theme: ThemeData(
        primaryColor: AppColors.darkBlue,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor
      ),
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      home: SplashScreen(),
    );
  }
}