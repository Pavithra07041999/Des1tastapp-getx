import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/spalsh_controller.dart';
import 'package:gps1taskapp/core/constant/asset_images.dart';


class SplashScreen extends GetWidget<SpalshController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Center(
            child: Image.asset(AssetImages.logo,
            height:200.0,
            width:200.0 ,
            ),
          ),
        ],
      ),
    );
  }
}