import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/util/constants.dart';

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
                        PetsGalleryWidget(pets: petDataModel),
                        (petController.getMySelectedPet == null)
                            ? ContactMeSection()
                            : SizedBox()
                      ],
                    ),
                    PetPhotoGallery(petId: petDataModel.id),
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
  const ContactMeSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Owner"), Text("Nama")]),
                ],
              ),
            ),
            Container(
              width: 130,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {},
                  child: Text(
                    "Contact me",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
