import 'package:flutter/material.dart';
import 'package:practice/photo.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  const PhotoDetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(photo.url),
          SizedBox(height: 20),
          Text('Title: ${photo.title}'),
          SizedBox(height: 10),
          Text('ID: ${photo.id}'),
        ],
      ),
    );
  }
}