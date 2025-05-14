import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TextfiledController extends GetxController{

  final TextEditingController inputController = TextEditingController();
   // Controller variables
  final displayedText = ''.obs;
final inputText = ''.obs;

  void updateText() {
    displayedText.value = inputController.text;
  }

  
  void onChangeText(value) {
    inputText.value = value;
    displayedText.value ="";
  }
}