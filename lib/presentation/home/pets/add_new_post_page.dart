import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/domain/pets/pet_add_new_post_request.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_functions.dart';
import 'package:i_love_iruka/presentation/widgets/global_widget_method.dart';
import 'package:image_picker/image_picker.dart';

import '../../../injection.dart';

class AddNewPostPage extends StatefulWidget {
  static final String TAG = "/add_new_post_page";

  @override
  _AddNewPostPageState createState() => _AddNewPostPageState();
}

class _AddNewPostPageState extends State<AddNewPostPage> {
  TextEditingController captionController = TextEditingController();
  File file;
  void getImage(ImageSource source) async {
    try {
      file = await getImageFromPhone(source);
      setState(() {});
    } catch (e) {
      Fluttertoast.showToast(msg: "No image selected}");
    }
  }

  final formKey = GlobalKey<FormState>();
  final petBloc = getIt<PetBloc>();
  void uploadNewPost(String photo) {
    var request = PetAddNewPostRequest(
        caption: captionController.text, pictureUrl: photo);

    petBloc.add(PetEvent.addNewPetPost(request, petId));
  }

  String petId;

  @override
  void initState() {
    petId = Get.arguments as String;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: BlocProvider(
        create: (context) => petBloc,
        child: BlocConsumer<PetBloc, PetState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                error: (e) {
                  Fluttertoast.showToast(msg: e.failure.error);
                },
                loading: (e) {},
                onUploadPhoto: (e) {
                  uploadNewPost(e.photo);
                },
                onAddNewPost: (e) {
                  Get.back(closeOverlays: true);
                  Fluttertoast.showToast(msg: e.status);
                });
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                        child: GlobalWidgetMethod.pageTitle("Add Post")),
                    SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverToBoxAdapter(
                        child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 3,
                                    spreadRadius: 3,
                                    offset: Offset(3, 3))
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3, color: Colors.white),
                              image: DecorationImage(
                                image: (file == null)
                                    ? AssetImage(
                                        'images/assets/upload.png',
                                      )
                                    : FileImage(file),
                                fit: (file == null)
                                    ? BoxFit.scaleDown
                                    : BoxFit.cover,
                              )),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Choose action"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Get.back();
                                              getImage(ImageSource.camera);
                                            },
                                            child: Text("Camera")),
                                        TextButton(
                                            onPressed: () {
                                              Get.back();
                                              getImage(ImageSource.gallery);
                                            },
                                            child: Text("Gallery"))
                                      ],
                                    ));
                          },
                          child: Text(
                            "Upload photo",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        )
                      ],
                    )),
                    SliverPadding(padding: EdgeInsets.symmetric(vertical: 10)),
                    SliverToBoxAdapter(
                      child: Text(
                        "Caption",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SliverPadding(padding: EdgeInsets.symmetric(vertical: 5)),
                    SliverToBoxAdapter(
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          minLines: 5,
                          maxLines: 5,
                          validator: (val) {
                            if (GetUtils.isNullOrBlank(val)) {
                              return "Please fill the caption";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.multiline,
                          controller: captionController,
                          decoration: InputDecoration(
                              hintText: "Pet Caption",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              )),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 40,
                            child: state.maybeMap(
                              orElse: () => defaultButton(context),
                              loading: (e) => loadingButton(),
                            )))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  ElevatedButton defaultButton(BuildContext context) {
    return ElevatedButton(
      child: Text(
        "Upload post",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        if (formKey.currentState.validate()) {
          if (file == null) {
            Fluttertoast.showToast(msg: "Please upload image");
          } else {
            petBloc.add(PetEvent.uploadPhoto(file));
          }
        } else {}
      },
    );
  }

  ElevatedButton loadingButton() {
    return ElevatedButton(
      child: Center(child: CircularProgressIndicator()),
      onPressed: null,
    );
  }
}
