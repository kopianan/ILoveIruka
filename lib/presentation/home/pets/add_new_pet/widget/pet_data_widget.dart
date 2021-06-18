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
  final formKey = GlobalKey<FormState>();
  final petBloc = getIt<PetBloc>();

  final addPetController = Get.put(AddPetController());
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return BlocProvider(
        create: (context) => petBloc,
        child: BlocConsumer<PetBloc, PetState>(listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            error: (e) {},
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
    SavePetRequestData petRequestData = addPetController.fillAllDataRequest(
        id: id,
        name: name.text,
        bio: bio.text,
        weight: double.parse(weight.text).toString(),
        brithDate: date.toIso8601String());

    petBloc.add(PetEvent.saveNewPet(petRequestData));
    print(petRequestData);
  }
}
