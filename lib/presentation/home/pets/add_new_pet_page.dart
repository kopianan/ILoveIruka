import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/domain/pets/label.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:i_love_iruka/presentation/home/pets/widgets/pet_gender_radio_widget.dart';
import 'package:i_love_iruka/presentation/widgets/global_widget_method.dart';
import 'package:i_love_iruka/util/pet_list.dart';
import 'package:image_picker/image_picker.dart';

import '../../../injection.dart';
import 'widgets/decoration_widget.dart';

class AddNewPetPage extends StatefulWidget {
  static final String TAG = '/add_new_pet_page';
  @override
  _AddNewPetPageState createState() => _AddNewPetPageState();
}

class _AddNewPetPageState extends State<AddNewPetPage> {
  File _image;
  final picker = ImagePicker();
  TextEditingController name;
  TextEditingController birthDate;
  TextEditingController weight;
  TextEditingController breed;
  TextEditingController bio;
  DateTime date;
  Label selectedType;
  Label selectedGender;
  String selectedBreed;
  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void initState() {
    name = TextEditingController();
    birthDate = TextEditingController();
    weight = TextEditingController();
    breed = TextEditingController();
    bio = TextEditingController();
    selectedGender = gender.first;

    super.initState();
  }

  final petBloc = getIt<PetBloc>();
  final formKey = GlobalKey<FormState>();
  SavePetRequestData petRequestData;

  void onSubmitPetData(BuildContext context, String photoPath) {
    if (formKey.currentState.validate()) {
      if (selectedType == null) {
      } else {
        var _breed = "other";
        if (selectedBreed == null) {
          _breed = breed.text;
        } else {
          _breed = selectedBreed;
        }
        petRequestData = SavePetRequestData(
            name: name.text,
            birthDate: date.toIso8601String(),
            weight: weight.text,
            profilePictureUrl: photoPath,
            gender: selectedGender.code,
            animal: selectedType.code,
            race: _breed,
            bio: bio.text);

        petBloc.add(PetEvent.saveNewPet(petRequestData));
      }
    } else {
      Fluttertoast.showToast(msg: "Fill all data ");
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return BlocProvider(
      create: (context) => petBloc,
      child: BlocConsumer<PetBloc, PetState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onGetPetListData: (e) {},
            onUploadPhoto: (e) {
              onSubmitPetData(context, e.photo);
            },
            onSaveNewPet: (e) {
              print(e.data.toJson());
            },
          );
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Scaffold(
              backgroundColor: Color(0xffFAFBFC),
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  TextButton(
                    onPressed: () {
                      if (_image == null) {
                        Fluttertoast.showToast(msg: "Please upload photo ");
                      } else {
                        petBloc.add(PetEvent.uploadPhoto(_image));
                      }
                    },
                    child: Icon(Icons.check),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GlobalWidgetMethod.pageTitle("Add Pet"),
                        SizedBox(height: 20),
                        petUploadPhoto(),
                        SizedBox(height: 15),
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
                                birthDate: birthDate,
                                dateTime: (e) {
                                  this.date = e;
                                },
                              ),
                            ]),
                        SizedBox(height: 15),
                        PetCustomFormField(
                          controller: weight,
                          type: TextInputType.number,
                          label: "Weight",
                          hintText: "grams",
                          suffix: 'grams',
                        ),
                        SizedBox(height: 15),
                        PetGenderRadioWidget(
                          initial: selectedGender,
                          selected: (e) {
                            selectedGender = e;
                          },
                          genderList: gender,
                        ),
                        SizedBox(height: 15),
                        PetCustomDropDown(
                          hintText: "Choose your pet type",
                          label: "Pet Type",
                          items: petType,
                          onChanged: (e) {
                            selectedBreed = null;
                            setState(() {
                              selectedType = e;
                            });
                          },
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
                              DropdownButtonFormField(
                                  value: selectedBreed,
                                  onChanged: (val) {
                                    setState(() {
                                      selectedBreed = val;
                                    });
                                    if (val == dogRaces.first ||
                                        val == catRaces.first) {
                                      selectedBreed = null;
                                    }
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                  },
                                  decoration:
                                      DecorationWidget.getInput("Pet Race"),
                                  items: ((selectedType == null)
                                          ? []
                                          : (selectedType.code == "0")
                                              ? dogRaces
                                              : catRaces)
                                      .map((e) => DropdownMenuItem(
                                            child: Text(e),
                                            value: e,
                                          ))
                                      .toList()),
                            ]),
                        SizedBox(height: 15),
                        selectedBreed == null
                            ? PetCustomFormField(
                                controller: breed,
                                label: "Breed",
                                hintText: "Other breed",
                              )
                            : SizedBox(),
                        SizedBox(height: 15),
                        PetCustomFormField(
                          controller: bio,
                          label: "Pet Bio",
                          hintText: "Description",
                          minLines: 4,
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
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

class DateTextFormField<T> extends StatefulWidget {
  const DateTextFormField(
      {Key key, @required this.birthDate, @required this.dateTime})
      : super(key: key);
  final ValueChanged<DateTime> dateTime;
  final TextEditingController birthDate;

  @override
  _DateTextFormFieldState createState() => _DateTextFormFieldState();
}

class _DateTextFormFieldState extends State<DateTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.birthDate,
        readOnly: true,
        onTap: () async {
          final date = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime.now(),
          );
          if (date != null) {
            widget.dateTime(date);
            widget.birthDate.text = DateFormat('dd-MMMM-yyyy').format(date);
          }
        },
        enabled: true,
        decoration: DecorationWidget.getInput("Pet birth date"));
  }
}

class PetCustomFormField extends StatelessWidget {
  const PetCustomFormField({
    Key key,
    @required this.label,
    @required this.hintText,
    @required this.controller,
    this.validator,
    this.onEditingComplete,
    this.suffix,
    this.inputAction,
    this.minLines = 1,
    this.type = TextInputType.text,
  }) : super(key: key);
  final String label;
  final String hintText;
  final TextEditingController controller;
  final TextInputType type;
  final String suffix;
  final int minLines;
  final TextInputAction inputAction;
  final Function onEditingComplete;
  final FormFieldValidator<String> validator;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      SizedBox(height: 5),
      TextFormField(
        textInputAction: inputAction,
        onEditingComplete: onEditingComplete,
        validator: validator,
        maxLines: minLines,
        minLines: minLines,
        controller: controller,
        keyboardType: type,
        decoration: DecorationWidget.getInput(hintText, suffix: suffix),
      ),
    ]);
  }
}

class PetCustomDropDown<T> extends StatefulWidget {
  const PetCustomDropDown(
      {Key key,
      @required this.items,
      @required this.label,
      @required this.onChanged,
      @required this.hintText})
      : super(key: key);
  final List<T> items;
  final String label;
  final String hintText;
  final ValueChanged<T> onChanged;
  @override
  _PetCustomDropDownState createState() => _PetCustomDropDownState();
}

class _PetCustomDropDownState extends State<PetCustomDropDown> {
  Label selectedType;
  @override
  void initState() {
    selectedType = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      DropdownButtonFormField(
          value: selectedType,
          onChanged: (val) {
            setState(() {
              selectedType = val;
            });
            FocusScope.of(context).requestFocus(FocusNode());

            return widget.onChanged(val);
          },
          decoration: DecorationWidget.getInput(widget.hintText),
          items: widget.items
              .map((e) => DropdownMenuItem(
                    child: Text(e.label),
                    value: e,
                  ))
              .toList()),
    ]);
  }
}
