import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewerPage extends StatefulWidget {
  static const String TAG = '/photo_viewer_page';
  PhotoViewerPage({Key key}) : super(key: key);

  @override
  _PhotoViewerPageState createState() => _PhotoViewerPageState();
}

class _PhotoViewerPageState extends State<PhotoViewerPage> {
  String imageUrl;
  @override
  void initState() {
    imageUrl = Get.arguments as String;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              icon: Icon(
                Icons.download_rounded,
              ),
              onPressed: () async {
                var imageId = await ImageDownloader.downloadImage(imageUrl);
                String fileName = await ImageDownloader.findName(imageId);
                print(fileName);
              })
        ],
      ),
      body: PhotoView(
        imageProvider: NetworkImage(imageUrl),
      ),
    );
  }
}
