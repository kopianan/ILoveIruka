import 'dart:io';

import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:image_picker/image_picker.dart';

Future<File> getImageFromPhone(ImageSource source) async {
  final picker = ImagePicker();
  File _image;

  final pickedFile = await picker.getImage(source: source, imageQuality: 20);
  if (pickedFile != null) {
    
    _image = File(pickedFile.path);
  } else {
    throw (Exception("Error"));
  }
  return _image;
}

String checkIfStumbumOrIsPedigree(PetDataModel pet) {
  try {
    if (pet.animal.code == "0") {
      //isDog
      if (pet.isStumbum)
        return "STUMBUM";
      else
        return "NOT STUMBUM";
    } else {
      if (pet.isPedigree)
        return "PEDIGREE";
      else
        return "NOT PEDIGREE";
    }
  } catch (e) {
    return "UNDEFINED";
  }
}
