import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:i_love_iruka/application/pet/pet_bloc.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/pet_post_detail_page.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:get/get.dart';
import '../../../../injection.dart';
import '../add_new_post_page.dart';

class PetPhotoGallery extends StatefulWidget {
  const PetPhotoGallery({Key key, @required this.petDataModel})
      : super(key: key);
  final PetDataModel petDataModel;

  @override
  _PetPhotoGalleryState createState() => _PetPhotoGalleryState();
}

class _PetPhotoGalleryState extends State<PetPhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PetBloc>()
        ..add(PetEvent.getPetPostById(widget.petDataModel.id)),
      child: GetBuilder<PetController>(
        builder: (myPet) => BlocConsumer<PetBloc, PetState>(
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
                  return Stack(
                    children: [
                      Center(
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
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      (myPet.getMySelectedPet == null)
                          ? SizedBox()
                          : buildAddNewPostButton(
                              myPet.getMySelectedPet.id, myPet),
                    ],
                  );
                } else
                  return Stack(
                    children: [
                      GridView.count(
                        padding: EdgeInsets.zero,
                        crossAxisCount: 3,
                        children: e.list.map((photo) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(PetPostDetailPage.TAG,
                                  arguments: photo);
                            },
                            child: Container(
                              height: 150.0,
                              child: Image.network(
                                Constants.getStagingUrl() + photo.pictureUrl,
                                fit: BoxFit.cover,
                                errorBuilder: (e, err, trc) => Image.asset(
                                  'images/assets/broken_image.png',
                                  fit: BoxFit.contain,
                                ),
                                loadingBuilder: (BuildContext context,
                                    Widget child,
                                    ImageChunkEvent loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value: loadingProgress
                                                  .expectedTotalBytes !=
                                              null
                                          ? loadingProgress
                                                  .cumulativeBytesLoaded /
                                              loadingProgress.expectedTotalBytes
                                          : null,
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      (myPet.getMySelectedPet == null)
                          ? SizedBox()
                          : buildAddNewPostButton(
                              myPet.getMySelectedPet.id, myPet),
                    ],
                  );
              },
            );
          },
        ),
      ),
    );
  }

  Positioned buildAddNewPostButton(String petId, PetController myPet) {
    return Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            Get.toNamed(AddNewPostPage.TAG, arguments: widget.petDataModel);
          },
          child: Icon(Icons.add),
        ));
  }
}
