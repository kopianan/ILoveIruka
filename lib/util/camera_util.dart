import 'dart:io';

import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart' as pathProvider;
// import 'package:path/path.dart'as path;
class CameraUtil {
  Future<String> takePicture({bool fromCamera}) async {
    File imageFile;
    if (fromCamera) {
      imageFile = await ImagePicker.pickImage(
          source: ImageSource.camera, maxWidth: 600);
    } else {
      imageFile = await ImagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 600,
      );
    }
    return imageFile.path ; 
    
  }
}
