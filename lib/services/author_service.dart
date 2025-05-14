import 'package:gps1taskapp/core/constant/url.dart';
import 'package:gps1taskapp/models/author.dart';
import 'package:gps1taskapp/services/api_service.dart';

class AuthorService {
  Future<List<Author>?> getAuthors() async {
    try {
      String url = Url.getAuthors;
      final response = await ApiService().get(url);
      if (response.isNotEmpty) {
        List<Author> data = (response as List).map<Author>((json) => Author.fromJson(json)).toList();
            return data;
      }
      return [];
    } catch (e) {
      return [];
    }
  }
}
