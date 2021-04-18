import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_tags.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/util/constants.dart';

// InstaProfilePage
class PetsDetailPage extends StatefulWidget {
  static const String TAG = '/pets_detail_page';
  @override
  _PetsDetailPageState createState() => _PetsDetailPageState();
}

class _PetsDetailPageState extends State<PetsDetailPage> {
  PetDataModel petDataModel;
  @override
  void initState() {
    petDataModel = Get.arguments as PetDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    height: 300 + kToolbarHeight,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(Constants.getStagingUrl() +
                                petDataModel.profilePictureUrl),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: kToolbarHeight,
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Get.back(closeOverlays: true);
                            }),
                      ],
                    ),
                  )
                ]),
              ),
            ];
          },
          // You tab view goes here
          body: Column(
            children: <Widget>[
              TabBar(
                tabs: [
                  Tab(text: 'Bio Data'),
                  Tab(text: 'Gallery'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Stack(
                      children: [
                        PetsGalleryWidget(
                          pets: petDataModel,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset.fromDirection(100, 3),
                                    blurRadius: 4,
                                    spreadRadius: 3)
                              ],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 25,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Owner"),
                                            Text("Nama")
                                          ]),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      onPressed: () {},
                                      child: Text(
                                        "Contact me",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    PetPhotoGallery(
                      petId: petDataModel.id,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PetPhotoGallery extends StatefulWidget {
  const PetPhotoGallery({Key key, @required this.petId}) : super(key: key);
  final String petId;

  @override
  _PetPhotoGalleryState createState() => _PetPhotoGalleryState();
}

class _PetPhotoGalleryState extends State<PetPhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PetBloc>()..add(PetEvent.getPetPostById(widget.petId)),
      child: BlocConsumer<PetBloc, PetState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            loading: (e) {},
            onGetPetPostById: (e) {
              print(e);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return Container();
            },
            loading: (e) => Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            onGetPetPostById: (e) {
              if (e.list.length == 0) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        size: 60,
                        color: Colors.grey,
                      ),
                      Text(
                        "No Post",
                        style: TextStyle(fontSize: 30, color: Colors.grey),
                      )
                    ],
                  ),
                );
              } else
                return GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 3,
                  children: e.list.map((photo) {
                    return Container(
                      height: 150.0,
                      child: Image.network(
                          Constants.getStagingUrl() + photo.pictureUrl),
                    );
                  }).toList(),
                );
            },
          );
        },
      ),
    );
  }
}

class PetsGalleryWidget extends StatefulWidget {
  const PetsGalleryWidget({Key key, @required this.pets}) : super(key: key);
  final PetDataModel pets;

  @override
  _PetsGalleryWidgetState createState() => _PetsGalleryWidgetState();
}

class _PetsGalleryWidgetState extends State<PetsGalleryWidget> {
  List<PetTags> tags;
  void setTagList() {
    tags = [
      PetTags(
        label: "Gender",
        color: Color(0xFFFFB795),
        value: widget.pets.gender.label,
      ),
      PetTags(
        label: "Type",
        color: Color(0xFFAEF3B0),
        value: widget.pets.animal.label,
      ),
      PetTags(
        label: "Weight",
        color: Color(0xFFACA1FD),
        value: widget.pets.weight.toString() + "gr",
      ),
      PetTags(
        label: "Race",
        color: Color(0xFFFAAFFF),
        value: widget.pets.race,
      ),
      PetTags(
        label: "Age",
        color: Color(0xFFFDFFA0),
        value: calculateAge(DateTime.now(), widget.pets.birthDate),
      ),
    ];
  }

  @override
  void initState() {
    setTagList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.pets.name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                // Text("Alamat sesuai owner")
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Tags(
              itemCount: tags.length,
              horizontalScroll: true,
              itemBuilder: (index) {
                return Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(2, 2),
                              blurRadius: 2,
                              spreadRadius: 2)
                        ],
                        color: tags[index].color,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(tags[index].label),
                          Text(
                            tags[index].value,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pet Bio",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(widget.pets.bio),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container informationBox(String value, String key) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(key),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
    );
  }
}
