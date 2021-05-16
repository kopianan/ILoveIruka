import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_post_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_report_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/my_pets_page.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
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
  TextEditingController description = TextEditingController();
  String user;
  @override
  void initState() {
    petPostDataModel = Get.arguments[0] as PetPostDataModel;
    user = Get.arguments[1] as String;
    setPopUpData();
    super.initState();
  }

  final petBloc = getIt<PetBloc>();
  final petController = Get.put(PetController());
  final authController = Get.put(UserController());

  List<PopupMenuItem> popUp = <PopupMenuItem>[];

  void setPopUpData() {
    if (user == authController.getUserData().id) {
      popUp.add(PopupMenuItem<String>(
          child: const Text('Delete', style: TextStyle(color: Colors.red)),
          value: 'delete'));
    } else {
      popUp.add(
        PopupMenuItem<String>(
            child: const Text('Report', style: TextStyle(color: Colors.black)),
            value: 'report'),
      );
    }
  }

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
              onReportPetPost: (e) {
                Get.back();
                Fluttertoast.showToast(msg: e.postResponse);
              });
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
                    return popUp;
                  },
                  onSelected: (val) {
                    onSelected(val);
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

  void onSelected(String choice) {
    if (choice == 'delete') {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Delete"),
              content: Text("Are you sure want to delete this post ?"),
              actions: [
                TextButton(
                  onPressed: () {
                    petBloc.add(PetEvent.deletePetPost(petPostDataModel.id));
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
    } else if (choice == 'report') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            "Report this post",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Container(
            width: double.infinity,
            child: TextFormField(
              controller: description,
              decoration: InputDecoration(
                hintText: "Report description",
                border: OutlineInputBorder(),
              ),
              minLines: 3,
              maxLines: 4,
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  final _data = PetReportDataModel(
                      description: description.text, post: petPostDataModel.id);
                  petBloc.add(PetEvent.reportPetPost(_data));
                },
                child: Text("Send Report")),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Cancel", style: TextStyle(color: Colors.red)),
            )
          ],
        ),
      );
    } else {
      Fluttertoast.showToast(msg: "Will be edited");
    }
  }
}
