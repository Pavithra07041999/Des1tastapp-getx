import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:gps1taskapp/controllers/item_list_controller.dart';


class ItemListViewScreen extends GetWidget<ItemListController> {
  const ItemListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "List Items",
        ),
      ),
      body:
         ListView.builder(        
          itemCount: controller.list.length,
          itemBuilder: (_, index) => 
          ListItem(text:controller.list[index])
        ),
      ); 
  }
  }


class ListItem extends StatelessWidget {
  final String text;
  const ListItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
        child: Text(text,style: TextStyle(fontSize: 20),),
      ),
    );   
  }
}