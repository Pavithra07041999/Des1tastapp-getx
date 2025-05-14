
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gps1taskapp/controllers/home_controller.dart' show HomePageController;
import 'package:gps1taskapp/widgets/custom_button.dart';

class SecondScreen extends GetWidget<HomePageController> {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Second Screen"
          ),
        ),
          bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildAppButton("Go Back!", Get.back),
        ),
    );
  }

   Widget _buildAppButton(String title, VoidCallback onTap) {
    return AppButton(
      text: title,
      onTap: onTap,
    );
  }
}