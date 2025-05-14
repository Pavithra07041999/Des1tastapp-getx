import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/textfiled_controller.dart';

import 'package:gps1taskapp/widgets/custom_button.dart';

class TextfiledScreen extends GetWidget<TextfiledController> {
  const TextfiledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "TextField Screen",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter Something",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 12),
            
            TextField(
              controller: controller.inputController,
                onChanged:(value)=> controller.onChangeText(value),
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type here...",
                ),
            ),
            
            const SizedBox(height: 20),
             Obx(() => _buildAppButton(
                  "Submit",
                  () => controller.updateText(),
                  enabled: controller.inputText.value.trim().isNotEmpty,
                ),),
            
            const SizedBox(height: 20),
            
            Obx(() =>controller.displayedText.value.isNotEmpty ? Text(
                  "Result: ${controller.displayedText.value}",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ): Container()),
          ],
        ),
      ),
    );
  }

  Widget _buildAppButton(String title, VoidCallback onTap, {bool enabled = true}) {
    return AppButton(
      text: title,
      enabled: enabled,
      onTap: onTap,
    );
  }
}
