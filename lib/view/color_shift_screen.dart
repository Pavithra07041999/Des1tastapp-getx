import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/color_shift_controller.dart';

import 'package:gps1taskapp/widgets/custom_button.dart';

class ColorShiftScreen extends GetWidget<ColorShiftController> {
  const ColorShiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: controller.backgroundColor.value,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Color Shift Screen"
          ),
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildAppButton("Click Me!", controller.changeColor),
        ),
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
