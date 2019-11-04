import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:path/path.dart'as path;
class CameraUtil {
  Future<File> takePicture({bool fromCamera}) async {
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
    final imagePath = await pathProvider.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile.path);
    final savedImage = imageFile.copy('${imagePath.path}/profile.jpg');
    savedImage.then((onValue){print(onValue.path);});
    return imageFile ; 
    
  }
}
