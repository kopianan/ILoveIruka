import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/domain/pets/pet_post_data_model.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:photo_view/photo_view.dart';

class PetPostDetailPage extends StatefulWidget {
  static final String TAG = '/pet_post_detail_page';
  @override
  _PetPostDetailPageState createState() => _PetPostDetailPageState();
}

class _PetPostDetailPageState extends State<PetPostDetailPage> {
  PetPostDataModel petPostDataModel;
  @override
  void initState() {
    petPostDataModel = Get.arguments as PetPostDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Post",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back(closeOverlays: true);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 10,
              child: PhotoView(
                loadingBuilder: (context, event) {
                  return Center(
                    child: CircularProgressIndicator(
                      value: event.cumulativeBytesLoaded /
                          event.expectedTotalBytes,
                    ),
                  );
                },
                imageProvider: NetworkImage(
                    Constants.getStagingUrl() + petPostDataModel.pictureUrl),
                errorBuilder: (e, er, obs) {
                  return Image.asset('images/assets/no_image.jpg');
                },
              )),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Description",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
