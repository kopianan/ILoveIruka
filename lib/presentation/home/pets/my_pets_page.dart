import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/add_new_pet_page2.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet_page.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';
import 'package:i_love_iruka/presentation/widgets/global_widget_method.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../injection.dart';

class MyPetsPage extends StatefulWidget {
  static const String TAG = '/my_pets_page';
  MyPetsPage({Key key}) : super(key: key);

  @override
  _MyPetsPageState createState() => _MyPetsPageState();
}

class _MyPetsPageState extends State<MyPetsPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final addPetController = Get.put(AddPetController());

  void _onRefresh() async {
    petBloc.add(PetEvent.getMyPet());
  }

  void _onLoading() {
    _refreshController.loadComplete();
  }

  final petController = Get.put(PetController());
  @override
  void initState() {
    // if (petController.getMyPet.length == 0) {
    //   petBloc.add(PetEvent.getMyPet());
    // }
    petBloc.add(PetEvent.getMyPet());
    super.initState();
  }

  final petBloc = getIt<PetBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<PetController>(
      builder: (myPet) => SafeArea(
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
                  onGetMyPet: (e) {
                    petController.setMyPet(e.list);

                    _refreshController.refreshCompleted();
                  },
                  onPetDeleted: (e) {
                    petController.removeDataFromList(e.petData);
                    // Get.offNamed(MyPetsPage.TAG);
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
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        actions: [
                          TextButton(
                            onPressed: () {
                              petController.emptySelectedPet();
                              Get.toNamed(AddNewPetPage2.TAG);
                              // Get.toNamed(AddNewPetPage.TAG);
                            },
                            child: Text("Add Pet",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                        ],
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GlobalWidgetMethod.pageTitle("My Pet"),
                            ],
                          ),
                        ),
                      ),
                      state.maybeMap(
                        loading: (e) => SliverToBoxAdapter(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: CircularProgressIndicator(),
                              )
                            ],
                          ),
                        ),
                        orElse: () => SliverList(
                            delegate:
                                SliverChildBuilderDelegate((context, index) {
                          return Slidable(
                            actionPane: SlidableDrawerActionPane(),
                            secondaryActions: [
                              IconSlideAction(
                                caption: 'Delete',
                                color: Colors.red,
                                icon: Icons.delete,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              "Delete Pet",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            content: Text(
                                                "Are you sure want to delete pet\nName : ${myPet.getMyPet[index].name}\nThe action can not be undone"),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Get.back();
                                                    petBloc.add(
                                                        PetEvent.deletePet(myPet
                                                            .getMyPet[index]
                                                            .id));
                                                  },
                                                  child: Text(
                                                    "Delete",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                              TextButton(
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                  child: Text(
                                                    "No",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ))
                                            ],
                                          ));
                                },
                              ),
                              IconSlideAction(
                                caption: 'Edit',
                                color: Colors.green,
                                icon: Icons.edit,
                                onTap: () {
                                  myPet.setSelectedPet(myPet.getMyPet[index]);
                                  Get.toNamed(AddNewPetPage.TAG);
                                },
                              ),
                            ],
                            child: InkWell(
                              onTap: () {
                                myPet.setSelectedPet(myPet.getMyPet[index]);
                                Get.toNamed(PetsDetailPage.TAG,
                                    arguments: myPet.getMyPet[index]);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[200],
                                          blurRadius: 3,
                                          spreadRadius: 2,
                                          offset: Offset.fromDirection(45, 2))
                                    ]),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            width: 100,
                                            height: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: NetworkImage(Constants
                                                            .getStagingUrl() +
                                                        myPet.getMyPet[index]
                                                            .profilePictureUrl),
                                                    onError: (e, trace) {
                                                      return Center(
                                                          child: Image.asset(
                                                              'assets/no_image.jpg'));
                                                    },
                                                    fit: BoxFit.cover))),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                myPet.getMyPet[index].name,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                myPet.getMyPet[index].bio,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                myPet.getMyPet[index].animal
                                                    .label,
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }, childCount: myPet.getMyPet.length)),
                      ),
                    ],
                  ));
            },
          ),
        ),
      ),
    ));
  }
}
