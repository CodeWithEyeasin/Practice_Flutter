

import 'package:flutter/material.dart';
import 'package:practice/photo.dart';
import 'package:practice/photoservice.dart';
import 'package:practice/poto.dart';

void main(){
  runApp( const PhotoGallery());
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: PhotoListScreen(),
    );
  }
}

class PhotoListScreen extends StatefulWidget {
  const PhotoListScreen({super.key});

  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {
  final PhotoService photoService = PhotoService('https://jsonplaceholder.typicode.com/photos');
  late List<Photo> photos;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final List<Photo> fetchedPhotos = await photoService.getPhotos();
      setState(() {
        photos = fetchedPhotos;
      });
    } catch (e) {
      // Handle error
      print('Error fetching photos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Photo Gallery', style: TextStyle(
            fontWeight: FontWeight.bold,
          color: Colors.white,

        ),),
      ),
      body: photos == null
          ? const CircularProgressIndicator() // Show loading indicator while fetching data
          : ListView.builder(
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(photos[index].title),
            leading: Image.network(photos[index].thumbnailUrl),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoDetailScreen(photo: photos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
