import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gps1taskapp/controllers/fetching_data_controller.dart'
    show FetchingDataController;
import 'package:gps1taskapp/core/constant/colors.dart';
import 'package:gps1taskapp/models/author.dart';

class FetchingDataScreen extends GetWidget<FetchingDataController> {
  const FetchingDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(title: Text("Fetch Data"), centerTitle: true),
      body: Obx(
        () =>controller.isLoading.value  ? Center(child: CupertinoActivityIndicator(
          radius: 40,
        )) :ListView.builder(
          itemCount: controller.authors.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, i) {
            Author item = controller.authors[i];
            return AuthorCard(item: item);
          },
        ),
      ),
    );
  }
}

class AuthorCard extends StatelessWidget {
  final Author item;
  const AuthorCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(26),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image(
              image: NetworkImage(item.downloadUrl!),
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(item.author ?? "-", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
