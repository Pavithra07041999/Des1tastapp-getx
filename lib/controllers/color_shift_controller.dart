import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gps1taskapp/core/constant/colors.dart';

class ColorShiftController extends GetxController {
  var backgroundColor = AppColors.white.obs;
  final List<Color> pastelColors = [
    AppColors.pastelPink,
    AppColors.pastelBlue,
    AppColors.pastelGreen,
    AppColors.pastelYellow,
    AppColors.pastelPurple,
  ];

  void changeColor() {
    final random = Random();
    backgroundColor.value = pastelColors[random.nextInt(pastelColors.length)];
  }
}
