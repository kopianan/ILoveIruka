import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/application/user/user_bloc.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_functions.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../injection.dart';
import 'components/pets_gallery_widget.dart';
import 'components/pets_photo_gallery_widget.dart';

// InstaProfilePage
class PetsDetailPage extends StatefulWidget {
  static const String TAG = '/pets_detail_page';
  @override
  _PetsDetailPageState createState() => _PetsDetailPageState();
}

class _PetsDetailPageState extends State<PetsDetailPage> {
  PetDataModel petDataModel;
  final petController = Get.put(PetController());
  @override
  void initState() {
    petDataModel = Get.arguments as PetDataModel;
    super.initState();
  }

  @override
  void dispose() {
    petController.setSelectedPet(null);
    super.dispose();
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
                    height: 280 + kToolbarHeight,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                            Constants.getStagingUrl() +
                                petDataModel.profilePictureUrl,
                          ),
                          onError: (e, trc) =>
                              Center(child: Image.asset('assets/no_image.jpg')),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: kToolbarHeight ,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {
                                  Get.back(closeOverlays: true);
                                }),
                            (petController.getMySelectedPet == null)
                                ? SizedBox()
                                : BlocProvider(
                                    create: (context) => getIt<PetBloc>(),
                                    child: BlocConsumer<PetBloc, PetState>(
                                      listener: (context, state) {
                                        state.maybeMap(
                                            orElse: () {},
                                            error: (e) {
                                              Fluttertoast.showToast(
                                                  msg: e.failure.error);
                                            },
                                            onSaveNewPet: (e) {
                                              Fluttertoast.showToast(
                                                  msg: "Photo updated");
                                            },
                                            onUploadPhoto: (e) {
                                              var _pet = petDataModel;
                                              var _req = SavePetRequestData(
                                                  animal: _pet.animal.code,
                                                  bio: _pet.bio,
                                                  birthDate: _pet.birthDate,
                                                  gender: _pet.gender.code,
                                                  id: _pet.id,
                                                  isPedigree: _pet.isPedigree,
                                                  isSterile: _pet.isSterile,
                                                  isStumbum: _pet.isStumbum,
                                                  name: _pet.name,
                                                  race: _pet.race,
                                                  weight: _pet.weight
                                                      .toStringAsFixed(0),
                                                  profilePictureUrl: e.photo);

                                              context.read<PetBloc>().add(
                                                  PetEvent.saveNewPet(_req));
                                            });
                                      },
                                      builder: (context, state) {
                                        return InkWell(
                                          onTap: () {
                                            getImageFromPhone(
                                                    ImageSource.gallery)
                                                .then((value) {
                                              context.read<PetBloc>().add(
                                                  PetEvent.uploadPhoto(
                                                      value, petDataModel.id));
                                            }).catchError((onError) {
                                              Fluttertoast.showToast(
                                                  msg: "No image selected");
                                            });
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.only(right: 5),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white60,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 3)),
                                            child: Icon(
                                              Icons.edit,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                          ],
                        ),
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
                  Tab(text: 'Gallery'),
                  Tab(text: 'Bio Data'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PetPhotoGallery(petDataModel: petDataModel),
                    Stack(
                      children: [
                        PetsGalleryWidget(pets: petDataModel),
                        (petController.getMySelectedPet == null)
                            ? ContactMeSection(id: petDataModel.user)
                            : SizedBox()
                      ],
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

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({Key key, @required this.id}) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserBloc>()..add(UserEvent.getSingleUser(id)),
      child: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              onGetSingleUser: (e) {},
              error: (e) {
                print(e);
              });
        },
        builder: (context, state) {
          return Positioned(
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
              child: state.maybeMap(
                orElse: () => Center(),
                loading: (e) => Center(child: CircularProgressIndicator()),
                onGetSingleUser: (e) => Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundImage: NetworkImage(
                              Constants.getStagingUrl() + e.response.imageUrl,
                            ),
                            onBackgroundImageError: (e, err) {
                              return null;
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Owner"),
                                Text(
                                  e.response.fullName,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {
                            try {
                              launch('tel:${e.response.phoneNumber}');
                            } catch (e) {
                              Fluttertoast.showToast(
                                  msg: "Phone number invalid");
                            }
                          },
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
          );
        },
      ),
    );
  }
}
