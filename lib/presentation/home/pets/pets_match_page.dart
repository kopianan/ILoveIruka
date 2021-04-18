import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:i_love_iruka/domain/pets/pet_tags.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PetsMatchPage extends StatefulWidget {
  static const String TAG = '/pets_match_page';
  PetsMatchPage({Key key}) : super(key: key);

  @override
  _PetsMatchPageState createState() => _PetsMatchPageState();
}

class _PetsMatchPageState extends State<PetsMatchPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    petBloc.add(PetEvent.getPetList(GetPetRequestData()));
  }

  void _onLoading() {}

  final petBloc = getIt<PetBloc>();
  final petController = Get.put(PetController());

  void checkPetList() {
    if (petController.getListPet.length == 0) {
      petBloc.add(PetEvent.getPetList(GetPetRequestData()));
    }
  }

  @override
  void initState() {
    checkPetList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const double horizontal = 20;
    return GetBuilder<PetController>(
      builder: (pet) => SafeArea(
        child: BlocProvider(
          create: (context) => petBloc,
          child: BlocConsumer<PetBloc, PetState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  loading: (e) {},
                  error: (e) {
                    _refreshController.refreshCompleted();
                  },
                  onGetPetListData: (e) {
                    _refreshController.refreshCompleted();
                    pet.setListPet(e.petList);
                  });
            },
            builder: (context, state) {
              return SmartRefresher(
                enablePullDown: true,
                enablePullUp: true,
                header: WaterDropHeader(),
                footer: CustomFooter(
                  builder: (BuildContext context, LoadStatus mode) {
                    Widget body;
                    if (mode == LoadStatus.idle) {
                      body = Text("pull up load");
                    } else if (mode == LoadStatus.loading) {
                      body = CupertinoActivityIndicator();
                    } else if (mode == LoadStatus.failed) {
                      body = Text("Load Failed!Click retry!");
                    } else if (mode == LoadStatus.canLoading) {
                      body = Text("release to load more");
                    } else {
                      body = Text("No more Data");
                    }
                    return Container(
                      height: 55.0,
                      child: Center(child: body),
                    );
                  },
                ),
                controller: _refreshController,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10, horizontal: horizontal),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Colors.grey[300],
                              offset: Offset.fromDirection(70, 3))
                        ]),
                        child: TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(right: 10, left: 15),
                              hintText: "Search",
                              suffixIcon: Icon(Icons.search, size: 25),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: horizontal),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Find your pet match",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                            Text("Alamat saya",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ),
                    (pet.getListPet.isEmpty)
                        ? SliverToBoxAdapter(
                            child: Container(child: Text("No Data")))
                        : SliverToBoxAdapter(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: ListView.builder(
                                  itemCount: pet.getListPet.length,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        buildPetItem(pet.getListPet[index]),
                                        SizedBox(height: 13)
                                      ],
                                    );
                                  }),
                            ),
                          )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  InkWell buildPetItem(PetDataModel pet) {
    List<PetTags> tags = [
      PetTags(
        label: "Gender",
        color: Color(0xFFFFB795),
        value: pet.gender.label,
      ),
      PetTags(
        label: "Type",
        color: Color(0xFFAEF3B0),
        value: pet.animal.label,
      ),
      PetTags(
        label: "Weight",
        color: Color(0xFFACA1FD),
        value: pet.weight.toString(),
      ),
      PetTags(
        label: "Race",
        color: Color(0xFFFAAFFF),
        value: pet.race,
      ),
      PetTags(
          label: "Age",
          color: Color(0xFFFDFFA0),
          value: calculateAge(DateTime.now(), pet.birthDate)),
    ];
    return InkWell(
      onTap: () {
        Get.toNamed(PetsDetailPage.TAG);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: () {
            Get.toNamed(PetsDetailPage.TAG, arguments: pet);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 3,
                  spreadRadius: 3,
                  offset: Offset.fromDirection(30, 0.3))
            ]),
            width: Get.size.width,
            height: Get.size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Image.network(
                      // "https://unsplash.com/photos/L2iZFRPaH1M/download?force=true&w=640",
                      Constants.getStagingUrl() + pet.profilePictureUrl,
                      fit: BoxFit.cover,
                    )),
                SizedBox(height: 8),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Tags(
                    itemCount: tags.length,
                    itemBuilder: (int index) {
                      return ItemTags(
                        active: true,
                        pressEnabled: false,
                        textActiveColor: Colors.black,
                        activeColor: tags[index].color,
                        index: index,
                        title: tags[index].value,
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pet.name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          pet.bio,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// InkWell(
//                         onTap: () {
//                           Get.toNamed(PetsDetailPage.TAG);
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.white),
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 flex: 3,
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       right: 10, left: 10, top: 10),
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       image: DecorationImage(
//                                         image: NetworkImage(
//                                             'https://images.unsplash.com/photo-1548199973-03cce0bbc87b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80'),
//                                         fit: BoxFit.cover,
//                                       )),
//                                 ),
//                               ),
//                               Expanded(
//                                   flex: 1,
//                                   child: Column(
//                                     children: [
//                                       Text(
//                                         "Si Anying",
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       Text("")
//                                     ],
//                                   ))
//                             ],
//                           ),
//                         ));
