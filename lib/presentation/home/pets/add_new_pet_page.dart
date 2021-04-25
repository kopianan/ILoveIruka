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
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/home/pets/my_pets_page.dart';
import 'package:i_love_iruka/presentation/home/pets/widgets/pet_gender_radio_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/widgets/pet_status_widget.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/global_widget_method.dart';
import 'package:i_love_iruka/util/pet_list.dart';
import 'package:image_picker/image_picker.dart';
import '../../../injection.dart';
import 'widgets/decoration_widget.dart';
import 'widgets/pet_custom_dropdown.dart';

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
  bool isStumbum;
  bool isSterile;
  bool isPedigree;

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

  void onSubmitPetData(BuildContext context) {
    if (formKey.currentState.validate()) {
      if (selectedType == null) {
        Fluttertoast.showToast(msg: "Please choose type");
      } else if (isStumbum == null && isPedigree == null) {
        Fluttertoast.showToast(msg: "Please choose pet status");
      } else if (isSterile == null) {
        Fluttertoast.showToast(msg: "Please choose sterile status");
      } else if (birthDate.text == "") {
        Fluttertoast.showToast(msg: "Please choose birth date");
      } else if (double.tryParse(weight.text) == null) {
        Fluttertoast.showToast(
            msg: "Please insert correct number ex: 1.3",
            toastLength: Toast.LENGTH_LONG);
      } else {
        petBloc.add(PetEvent.uploadPhoto(_image));
      }
    } else {
      Fluttertoast.showToast(msg: "Fill all data ");
    }
  }

  void weightConverter(String text) {
    var _parsed = double.tryParse(text);
    if (_parsed == null) {}
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
            error: (e) {
              print(e.failure);
            },
            onUploadPhoto: (e) {
              var _breed = "other";
              if (selectedBreed == null)
                _breed = breed.text;
              else
                _breed = selectedBreed;
              petRequestData = SavePetRequestData(
                  name: name.text,
                  birthDate: date.toIso8601String(),
                  weight: double.parse(weight.text).toString(),
                  profilePictureUrl: e.photo,
                  gender: selectedGender.code,
                  animal: selectedType.code,
                  race: _breed,
                  bio: bio.text,
                  isPedigree: isPedigree,
                  isSterile: isSterile,
                  isStumbum: isStumbum);
              print(petRequestData.toJson());
              petBloc.add(PetEvent.saveNewPet(petRequestData));
            },
            onSaveNewPet: (e) {
              Fluttertoast.showToast(msg: "Successful save pet");
              Get.offNamedUntil(
                  MyPetsPage.TAG, ModalRoute.withName(DashboardPage.TAG));
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
                            }  else if (e.contains(",")) {
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
                            isStumbum = null;
                            isPedigree = null;
                            selectedBreed = null;
                            setState(() {
                              selectedType = e;
                            });
                          },
                        ),
                        SizedBox(height: 15),
                        //0 is dog
                        (selectedType == null)
                            ? SizedBox()
                            : (selectedType.code == "0")
                                ? PetStatusWidget(
                                    label: "Pet Status",
                                    selected: (e) {
                                      print(e.code);
                                      if (e.code == "0")
                                        isStumbum = true;
                                      else
                                        isStumbum = false;
                                    },
                                    status: dogStatus,
                                  )
                                : PetStatusWidget(
                                    label: "Pet Status",
                                    selected: (e) {
                                      print(e.code);

                                      if (e.code == "0")
                                        isPedigree = true;
                                      else
                                        isPedigree = false;
                                    },
                                    status: catStatus,
                                  ),
                        SizedBox(height: 15),
                        PetStatusWidget(
                          label: "Sterile ?",
                          selected: (e) {
                            if (e.code == "0")
                              isSterile = true;
                            else
                              isSterile = false;
                          },
                          status: sterile,
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
                        state.maybeMap(
                            orElse: () => BtnPrimaryBlue(
                                  text: "Save",
                                  onPressed: () {
                                    if (_image == null) {
                                      Fluttertoast.showToast(
                                          msg: "Please upload photo ");
                                    } else {
                                      onSubmitPetData(context);
                                    }
                                  },
                                ),
                            loading: (e) => BtnPrimaryBlueLoading()),

                        SizedBox(height: 15),
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

class DateTextFormField extends StatefulWidget {
  const DateTextFormField(
      {Key key,
      @required this.birthDate,
      @required this.dateTime,
      @required this.validator})
      : super(key: key);
  final ValueChanged<DateTime> dateTime;
  final TextEditingController birthDate;
  final FormFieldValidator<String> validator;

  @override
  _DateTextFormFieldState createState() => _DateTextFormFieldState();
}

class _DateTextFormFieldState extends State<DateTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: widget.validator,
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
