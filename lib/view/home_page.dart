import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gps1taskapp/controllers/home_controller.dart';

import 'package:gps1taskapp/routes/app_routes.dart';



class HomePage extends GetWidget<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          child: Column(
            children: [
              _MenuTile(text: "Color Shift", onTap: (){
                Get.toNamed(AppRoutes.colorShiftScreen);
              }),
              _MenuTile(text: "Item List", onTap: (){
                Get.toNamed(AppRoutes.itemListScreen);
              }),
              _MenuTile(text: "TextField", onTap: (){
                Get.toNamed(AppRoutes.textFiledScreen);
              }),
              _MenuTile(text: "Fetches data from an API", onTap: (){
                Get.toNamed(AppRoutes.fetchingDataScreen);
                
              }),
              _MenuTile(text: "Go To Second Screen", onTap: (){
                Get.toNamed(AppRoutes.secondScreen);
                
              })

              
            ],
          ),
        ),
      ),
    );
  }
  }

class _MenuTile extends StatelessWidget {
  final String text;
  final Function onTap;
  const _MenuTile({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: ()=>onTap(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(26),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
          child: Row(
            children: [
              Expanded(child: Text(text,style: TextStyle(fontSize: 20),)),
              Icon(Icons.arrow_forward_sharp)
            ],
          ),
        ),
      ),
    );
    
  }
}