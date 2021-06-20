import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_functions.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/widget_collection.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:image_picker/image_picker.dart';

class PetPhotoWidget extends StatefulWidget {
  const PetPhotoWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetPhotoWidgetState createState() => _PetPhotoWidgetState();
}

class _PetPhotoWidgetState extends State<PetPhotoWidget> {
  final addPetController = Get.put(AddPetController());
  final userController = Get.put(UserController());
  final petBloc = getIt<PetBloc>();
  File selectedImage;
  @override
  void initState() {
    selectedImage = addPetController.getDummyImage;
    super.initState();
  }

  TextEditingController breed = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: BlocProvider(
            create: (context) => petBloc,
            child: BlocConsumer<PetBloc, PetState>(
              listener: (context, state) {
                state.maybeMap(
                    orElse: () {},
                    onUploadPhoto: (e) {
                      addPetController.setPetImage(e.photo);
                      addPetController.pageNextPage();
                    },
                    error: (e) {
                      Get.showSnackbar(GetBar(
                        message: e.failure.error,
                        duration: Duration(seconds: 3),
                      ));
                    });
              },
              builder: (context, state) => Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetCollection.getTitle("Pet Profile Photo"),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.size.width / 2,
                          height: Get.size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: InkWell(
                            onTap: () {
                              Get.dialog(AlertDialog(
                                title: Text("Choose Action"),
                                actionsPadding: EdgeInsets.zero,
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Get.back();
                                        getImageFromPhone(ImageSource.gallery)
                                            .then((value) {
                                          setState(() {
                                            selectedImage = value;
                                          });
                                        }).catchError((onError) {
                                          Get.showSnackbar(GetBar(
                                            message: "No image selected",
                                            duration: Duration(seconds: 3),
                                          ));
                                        });
                                      },
                                      child: Text("Gallery")),
                                  TextButton(
                                      onPressed: () {
                                        Get.back();
                                        getImageFromPhone(ImageSource.camera)
                                            .then((value) {
                                          setState(() {
                                            selectedImage = value;
                                          });
                                        }).catchError((onError) {
                                          Get.showSnackbar(GetBar(
                                            message: "No image selected",
                                            duration: Duration(seconds: 3),
                                          ));
                                        });
                                      },
                                      child: Text("Camera")),
                                ],
                              ));
                            },
                            child: (selectedImage != null)
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.file(
                                      selectedImage,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.image_outlined,
                                        size: Get.size.width / 4,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Add Image",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        state.maybeMap(orElse: () {
                          return BtnPrimaryBlue(
                            text: "Confirm Image",
                            onPressed: () {
                              //check if save to controller
                              if (addPetController.getImagePath == "") {
                                if (selectedImage == null) {
                                  Get.showSnackbar(GetBar(
                                    message: "Please uplaod pet image",
                                    duration: Duration(seconds: 5),
                                  ));
                                } else {
                                  addPetController.setDummyImage(selectedImage);
                                  petBloc.add(PetEvent.uploadPhoto(
                                      selectedImage,
                                      userController.getUserData().id));
                                }
                              } else {
                                addPetController.pageNextPage();
                              }
                            },
                          );
                        }, loading: (e) {
                          return BtnPrimaryBlueLoading();
                        })
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
