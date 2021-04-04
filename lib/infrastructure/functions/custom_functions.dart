import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File> getImageFromPhone(ImageSource source) async {
  final picker = ImagePicker();
  File _image;

  final pickedFile = await picker.getImage(source: source);
  if (pickedFile != null) {
    _image = File(pickedFile.path);
  } else {
    throw (Exception("Error"));
  }
  return _image;
}
