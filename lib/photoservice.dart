
import "package:http/http.dart" as http;
import 'dart:convert';

import 'package:practice/photo.dart';

class PhotoService {
  final String apiUrl;

  PhotoService(this.apiUrl);

  Future<List<Photo>> getPhotos() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Photo.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
