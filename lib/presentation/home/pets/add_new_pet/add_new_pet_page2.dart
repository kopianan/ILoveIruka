import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/util/pet_list.dart';

class AddNewPetPage2 extends StatefulWidget {
  static final String TAG = '/add_new_pet_page2';
  @override
  _AddNewPetPage2State createState() => _AddNewPetPage2State();
}

class _AddNewPetPage2State extends State<AddNewPetPage2> {
  List<PetPreferenceDataModel> _petType = getPetType;
  final petController = Get.put(PetController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        scrollDirection: Axis.horizontal,
        // controller: controller,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Choose pet type",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GridView.builder(
                          shrinkWrap: true,
                          itemCount: _petType.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1 / 1.2,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  setState(() {
                                    var _newList = _petType
                                        .map((e) => e.copyWith(selected: false))
                                        .toList();
                                    _petType = _newList;
                                    var _data = _petType[index]
                                        .copyWith(selected: true);
                                    _petType[index] = _data;
                                  });
                                },
                                child: PetTypeChoices(
                                  petType: _petType[index],
                                ));
                          }),
                      SizedBox(height: 40),
                      BtnPrimaryBlue(text: "Confirm")
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          )
        ],
      ),
    ));
  }
}

class PetTypeChoices extends StatefulWidget {
  const PetTypeChoices({Key key, this.petType}) : super(key: key);
  final PetPreferenceDataModel petType;

  @override
  _PetTypeChoicesState createState() => _PetTypeChoicesState();
}

class _PetTypeChoicesState extends State<PetTypeChoices> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 2), borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              widget.petType.image,
              color: (widget.petType.selected) ? null : Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.petType.label,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
