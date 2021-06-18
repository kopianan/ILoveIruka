import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/domain/pets/label.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:i_love_iruka/presentation/home/pets/widgets/decoration_widget.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/util/pet_list.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../injection.dart';
import '../../../dashboard_page.dart';
import '../../add_new_pet_page.dart';
import '../../my_pets_page.dart';

class PetDataWidget extends StatefulWidget {
  @override
  _PetDataWidgetState createState() => _PetDataWidgetState();
}

class _PetDataWidgetState extends State<PetDataWidget> {
  TextEditingController name = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController breed = TextEditingController();
  TextEditingController bio = TextEditingController();
  DateTime date;
  String id;
  String image;
  final picker = ImagePicker();
  File _image;
  final formKey = GlobalKey<FormState>();
  final petBloc = getIt<PetBloc>();

  Label selectedType;
  final addPetController = Get.put(AddPetController());
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return BlocProvider(
        create: (context) => petBloc,
        child: BlocConsumer<PetBloc, PetState>(listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            error: (e) {
              print(e.failure);
            },
            onUploadPhoto: (e) {
              // petRequestData = SavePetRequestData(
              //     name: name.text,
              //     birthDate: date.toIso8601String(),
              //     weight: double.parse(weight.text).toString(),
              //     profilePictureUrl: e.photo,
              //     gender: selectedGender.code,
              //     animal: selectedType.code,
              //     race: _breed,
              //     bio: bio.text,
              //     isPedigree: isPedigree,
              //     isSterile: isSterile,
              //     isStumbum: isStumbum);

              // petBloc.add(PetEvent.saveNewPet(petRequestData));
            },
            onSaveNewPet: (e) {
              Fluttertoast.showToast(msg: "Successful save pet");
              Get.offNamedUntil(
                  MyPetsPage.TAG, ModalRoute.withName(DashboardPage.TAG));
            },
          );
        }, builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pet Data",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 20),
                    petUploadPhoto(),
                    SizedBox(height: 20),
                    PetCustomFormField(
                      validator: (e) {
                        if (GetUtils.isBlank(e)) {
                          return "Name can not be empty";
                        }
                        return null;
                      },
                      controller: name,
                      inputAction: TextInputAction.next,
                      onEditingComplete: () => node.nextFocus(),
                      label: "Pet name",
                      hintText: "Your new pet name",
                    ),
                    SizedBox(height: 15),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date of birth",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          DateTextFormField(
                            validator: (e) {
                              if (GetUtils.isBlank(e)) {
                                return "Plsease insert birth date";
                              }
                              return null;
                            },
                            birthDate: birthDate,
                            dateTime: (e) {
                              this.date = e;
                            },
                          ),
                        ]),
                    SizedBox(height: 15),
                    PetCustomFormField(
                      controller: weight,
                      validator: (e) {
                        if (GetUtils.isNullOrBlank(e)) {
                          return "Weight must not empty";
                        } else if (e.contains(",")) {
                          return "Use '.' (dot), not ',' (coma)";
                        } else
                          return null;
                      },
                      type: TextInputType.number,
                      label: "Weight",
                      hintText: "Kilogram",
                      suffix: 'kg',
                    ),
                    SizedBox(height: 15),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Breed",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ]),
                    SizedBox(height: 15),
                    SizedBox(height: 15),
                    PetCustomFormField(
                      controller: bio,
                      label: "Pet Bio",
                      hintText: "Description",
                      minLines: 4,
                    ),
                    SizedBox(height: 30),
                    state.maybeMap(
                        orElse: () => BtnPrimaryBlue(
                              text: "Confirm",
                              onPressed: () {
                                if (formKey.currentState.validate()) {
                                  onSaveButton();
                                }
                              },
                            ),
                        loading: (e) => BtnPrimaryBlueLoading()),
                  ],
                ),
              ),
            ),
          );
        }));
  }

  void onSaveButton() {
    if (_image == null) {
      Fluttertoast.showToast(msg: "Please upload photo ");
    } else {
      bool _isDog = addPetController.checkPetType();
      SavePetRequestData petRequestData = SavePetRequestData(
          id: id,
          name: name.text,
          birthDate: date.toIso8601String(),
          weight: double.parse(weight.text).toString(),
          profilePictureUrl: image,
          gender: addPetController.getPetGender
              .firstWhere((element) => element.selected == true)
              .code,
          animal: addPetController.getPetType
              .firstWhere((element) => element.selected == true)
              .code,
          bio: bio.text,
          isPedigree: (_isDog)
              ? null
              : addPetController.getPetStatus
                  .firstWhere((element) => element.selected == true)
                  .selected,
          isSterile: addPetController.getPetSterile
              .firstWhere((element) => element.selected == true)
              .selected,
          isStumbum: (_isDog)
              ? addPetController.getPetSterile
                  .firstWhere((element) => element.selected == true)
                  .selected
              : null);
      // petBloc.add(PetEvent.saveNewPet(petRequestData));
      print(petRequestData);
    }
  }

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source, imageQuality: 20);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Widget petUploadPhoto() {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Choose Action"),
                  actions: [
                    TextButton(
                        onPressed: () async {
                          Get.back();
                          await getImage(ImageSource.camera);
                        },
                        child: Text("Camera")),
                    TextButton(
                        onPressed: () async {
                          Get.back();
                          await getImage(ImageSource.gallery);
                        },
                        child: Text("Gallery")),
                  ],
                );
              });
        },
        child: Container(
          height: 120,
          width: 120,
          padding: EdgeInsets.all(10),
          child: (_image == null)
              ? Icon(
                  Icons.upload_sharp,
                  size: 70,
                  color: Colors.grey[850],
                )
              : null,
          decoration: BoxDecoration(
              color: Color(0xffFAFBFC),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                    blurRadius: 2)
              ],
              shape: BoxShape.circle,
              border: Border.all(width: 3, color: Colors.white),
              image: (_image == null)
                  ? null
                  : DecorationImage(
                      image: FileImage(_image), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
