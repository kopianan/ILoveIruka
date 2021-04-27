import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_outline.dart';
import 'package:i_love_iruka/util/pet_list.dart';

class PetSearchPage extends StatefulWidget {
  static final String TAG = '/pet_search_page';
  @override
  _PetSearchPageState createState() => _PetSearchPageState();
}

final GlobalKey<TagsState> animalTagsKey = GlobalKey<TagsState>();
final GlobalKey<TagsState> genderTagsKey = GlobalKey<TagsState>();

class _PetSearchPageState extends State<PetSearchPage> {
  GetPetRequestData request = GetPetRequestData();
  RangeValues weightRange = RangeValues(1, 5);
  final name = TextEditingController();
  final race = TextEditingController();
  List<String> getAnimalType() {
    List<String> _list = [];
    List<Item> lst = animalTagsKey.currentState?.getAllItem;
    if (lst != null) {
      lst.forEach((element) {
        if (element.active) {
          _list.add(element.index.toString());
        }
      });
    }
    return _list;
  }

  List<String> getGenderType() {
    List<String> _list = [];
    List<Item> lst = genderTagsKey.currentState?.getAllItem;
    if (lst != null) {
      lst.forEach((element) {
        if (element.active) {
          _list.add(element.index.toString());
        }
      });
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         request = GetPetRequestData(
        //             animal: getAnimalType(),
        //             gender: getGenderType(),
        //             name: name.text,
        //             race: race.text,
        //             weight: [
        //               weightRange.start.round(),
        //               weightRange.end.round()
        //             ]);
        //         print(request);
        //       },
        //       child: Text("GET"))
        // ],
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pet Name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Pet Name",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pet Breed",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: race,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Pet Race",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pet Type",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Tags(
                        key: animalTagsKey,
                        itemCount: petType.length,
                        spacing: 20,
                        itemBuilder: (int index) {
                          return buildItemTags(index, petType);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pet Gender",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Tags(
                        key: genderTagsKey,
                        spacing: 20,
                        itemCount: gender.length,
                        itemBuilder: (int index) {
                          return buildItemTags(index, gender);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pet Weight",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: RangeSlider(
                            min: 0,
                            max: 50,
                            values: weightRange,
                            divisions: 50,
                            labels: RangeLabels(
                                weightRange.start.round().toString(),
                                weightRange.end.round().toString()),
                            onChanged: (RangeValues values) {
                              setState(() {
                                weightRange = values;
                              });
                            },
                          ),
                        ),
                        Text(
                          "[ " +
                              weightRange.start.round().toString() +
                              "-" +
                              weightRange.end.round().toString() +
                              " ]",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: BtnPrimaryOutline(
                        onPressed: () {},
                        text: "Reset",
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        flex: 5,
                        child: BtnPrimaryBlue(
                          text: "Apply",
                          onPressed: () {
                            request = GetPetRequestData(
                                animal: getAnimalType(),
                                gender: getGenderType(),
                                name: name.text,
                                race: race.text,
                                weight: [
                                  weightRange.start.round(),
                                  weightRange.end.round()
                                ]);

                            Get.back(result: request);
                          },
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ItemTags buildItemTags(int index, List items) {
    return ItemTags(
      key: Key(index.toString()),
      index: index,
      active: false,
      color: Colors.white,
      activeColor: Colors.blue,
      combine: ItemTagsCombine.withTextBefore,
      textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      title: items[index].label,
      onLongPressed: (item) => print(item),
    );
  }
}
// {
//     "name": "",
//     "race": "",
//     "weight": [799, 0],
//     "animal": "",
//     "gender": ""
// }
