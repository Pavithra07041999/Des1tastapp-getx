import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  Future<dynamic> get(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final data = jsonDecode(response.body);
        return data; 
      } else {
        throw HttpException("Something went wrong!");
      }
    } catch (e) {
      rethrow;
    }
  }
}
