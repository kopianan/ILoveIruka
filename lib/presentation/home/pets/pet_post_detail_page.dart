import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_post_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/my_pets_page.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:photo_view/photo_view.dart';

import '../../../injection.dart';

class PetPostDetailPage extends StatefulWidget {
  static final String TAG = '/pet_post_detail_page';
  @override
  _PetPostDetailPageState createState() => _PetPostDetailPageState();
}

class _PetPostDetailPageState extends State<PetPostDetailPage> {
  PetPostDataModel petPostDataModel;
  @override
  void initState() {
    petPostDataModel = Get.arguments as PetPostDataModel;
    super.initState();
  }

  final petBloc = getIt<PetBloc>();
  final petController = Get.put(PetController());
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => petBloc,
      child: BlocConsumer<PetBloc, PetState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            loading: (e) => Fluttertoast.showToast(msg: "Loading ..."),
            error: (e) => Fluttertoast.showToast(msg: e.toString()),
            onPetPostDeleted: (e) {
              var _pet = petController.getMySelectedPet;
              Get.offNamedUntil(
                  PetsDetailPage.TAG, ModalRoute.withName(MyPetsPage.TAG),
                  arguments: _pet);

              Fluttertoast.showToast(msg: e.status);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black87,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.white),
              actions: [
                PopupMenuButton(
                  icon: Icon(Icons.more_vert_rounded),
                  itemBuilder: (_) {
                    return [
                      // PopupMenuItem<String>(
                      //     child: const Text('Edit'), value: 'edit'),
                      PopupMenuItem<String>(
                          child: const Text('Delete',
                              style: TextStyle(color: Colors.red)),
                          value: 'delete'),
                    ];
                  },
                  onSelected: (val) {
                    if (val == 'delete') {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Delete"),
                              content: Text(
                                  "Are you sure want to delete this post ?"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    petBloc.add(PetEvent.deletePetPost(
                                        petPostDataModel.id));
                                  },
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("No"),
                                ),
                              ],
                            );
                          });
                    } else {
                      Fluttertoast.showToast(msg: "Will be edited");
                    }
                  },
                )
                // TextButton(
                //     onPressed: () {},
                //     child: Text(
                //       "Delete Post",
                //       style: TextStyle(color: Colors.red),
                //     ))
              ],
              title: Text(
                "Post",
                style: TextStyle(color: Colors.white),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Get.back(closeOverlays: true);
                },
              ),
            ),
            body: Column(
              children: [
                Expanded(
                    flex: 10,
                    child: PhotoView(
                      // loadingBuilder: (context, event) {
                      //   return Center(
                      //     child: CircularProgressIndicator(
                      //       value: event.cumulativeBytesLoaded /
                      //           event.expectedTotalBytes,
                      //     ),
                      //   );
                      // },
                      imageProvider: NetworkImage(Constants.getStagingUrl() +
                          petPostDataModel.pictureUrl),
                      errorBuilder: (e, er, obs) {
                        return Image.asset('images/assets/no_image.jpg');
                      },
                    )),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Description",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
