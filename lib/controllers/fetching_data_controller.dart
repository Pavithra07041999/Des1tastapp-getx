import 'package:get/get.dart';
import 'package:gps1taskapp/models/author.dart';
import 'package:gps1taskapp/services/author_service.dart';

class FetchingDataController extends GetxController{
  RxList<Author> authors = <Author>[].obs;
  var isLoading = false.obs;

  getAuthors() async{
    isLoading.value = true;
    authors.value = await AuthorService().getAuthors() ?? []; 
    isLoading.value = false;
  }


  @override
  void onInit() {
   
    super.onInit();
     getAuthors();
  }
}