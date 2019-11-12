import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as commonPath;

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
    // getting a directory path for saving
    final path = await getApplicationDocumentsDirectory();
// copy the file to a new pah
    final fileName = commonPath.basename(imageFile.path);
    final File newImage = await imageFile.copy('${path.path}/$fileName');
    return newImage.path.toString();
  }
}
