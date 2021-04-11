import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:i_love_iruka/application/partnership/partnership_bloc.dart';
import 'package:i_love_iruka/domain/partnership/partnership_data_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../injection.dart';

class PartnershipLocationPage extends StatelessWidget {
  static const String TAG = "/partnership_location_page";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PartnershipBloc>()
        ..add(
          PartnershipEvent.getPartnersList(),
        ),
      child: BlocConsumer<PartnershipBloc, PartnershipState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              loading: (e) {
                print(e);
              },
              error: (e) {
                print(e);
              },
              onGetParternData: (val) {
                val.listData.fold(
                  (l) => print(l),
                  (r) => print(r),
                );
              });
        },
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Scaffold(),
              loading: (e) => buildLoadingScaffold(),
              error: (e) => buildErrorScaffold(),
              onGetParternData: (val) {
                return val.listData.fold(
                  (l) => buildErrorScaffold(),
                  (r) => DoneGettingData(listPartner: r),
                );
              });
        },
      ),
    );
  }

  Scaffold buildLoadingScaffold() =>
      Scaffold(body: Center(child: CircularProgressIndicator()));

  Scaffold buildErrorScaffold() {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.error,
            size: 40,
          ),
          onPressed: () {},
        ),
      ],
    ));
  }
}

class DoneGettingData extends StatefulWidget {
  DoneGettingData({@required this.listPartner});
  final List<PartnershipDataModel> listPartner;

  @override
  _DoneGettingDataState createState() => _DoneGettingDataState();
}

class _DoneGettingDataState extends State<DoneGettingData> {
  Completer<GoogleMapController> _controller = Completer();
  CarouselController carouselController = CarouselController();
  // List<PartnershipDataModel> listPartner = <PartnershipDataModel>[];
  bool isCarouselHide = false;
  GoogleMapController controller;
  Marker currentMarker;

  @override
  void initState() {
    // listPartner = widget.listPartner;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          buildingsEnabled: true,
          mapToolbarEnabled: false,
          markers: widget.listPartner
              // -6.936000, 107.619594
              .map((e) => Marker(
                    position: LatLng(double.parse(e.lat), double.parse(e.lang)),
                    markerId: MarkerId(e.id),
                    onTap: () async {
                      final _currPage = widget.listPartner.indexOf(e);

                      Future.delayed(Duration(milliseconds: 800)).then(
                          (value) => carouselController.jumpToPage(_currPage));
                      setState(() {
                        isCarouselHide = true;
                      });
                    },
                  ))
              .toSet(),
          initialCameraPosition: CameraPosition(
            target: LatLng(
              double.parse(widget.listPartner.first.lat),
              double.parse(widget.listPartner.first.lang),
            ),
            zoom: 10,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            setState(() {
              this.controller = controller;
            });
          },
        ),
        Positioned(
          top: kToolbarHeight / 2,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            decoration: BoxDecoration(),
            child: Row(
              children: [
                IconButton(
                    color: Colors.black54,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 30,
                    ),
                    onPressed: () {
                      Get.back(closeOverlays: true);
                    }),
                // Expanded(
                //   child: TextFormField(
                //     style: TextStyle(fontSize: 15),
                //     decoration: InputDecoration(
                //         contentPadding: EdgeInsets.only(right: 10, left: 15),
                //         hintText: "Search",
                //         suffixIcon: Icon(Icons.search, size: 25),
                //         fillColor: Colors.white,
                //         filled: true,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10),
                //           borderSide: BorderSide.none,
                //         )),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: AnimatedSwitcher(
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  child: child,
                  scale: animation,
                );
              },
              duration: Duration(milliseconds: 300),
              child: (isCarouselHide == false)
                  ? Container()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  isCarouselHide = false;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                child: Text(
                                  "Close",
                                  style: TextStyle(color: Colors.white),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                              //  CircleAvatar(
                              //   maxRadius: 15,
                              //   backgroundColor: Colors.black87,
                              //   child: Icon(
                              //     Icons.close,
                              //     color: Colors.white,
                              //     size: 20,
                              //   ),
                              // ),
                              ),
                        ),
                        CarouselSlider(
                          carouselController: carouselController,
                          items: widget.listPartner
                              .map((e) => Container(
                                  height: 200,
                                  width: double.infinity,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            e.fullName,
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              e.description,
                                              maxLines: 2,
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    onButtonCallPressed(e);
                                                  },
                                                  child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.blue,
                                                      child: Icon(Icons.call,
                                                          color:
                                                              Colors.white))),
                                              InkWell(
                                                onTap: () {
                                                  onButtonDirectionPressed(e);
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Color(0xFFFA3434),
                                                  child: Icon(Icons.place,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  onButtonMessagePressed(e);
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Color(0xFF33B94A),
                                                  child: Icon(Icons.chat_bubble,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ))))
                              .toList(),
                          options: CarouselOptions(
                              height: 170,
                              onPageChanged: (page, reaseon) {
                                controller
                                    .animateCamera(CameraUpdate.newLatLngZoom(
                                        LatLng(
                                          double.parse(
                                              widget.listPartner[page].lat),
                                          double.parse(
                                              widget.listPartner[page].lang),
                                        ),
                                        12));
                              }),
                        ),
                      ],
                    ),
            ))
      ],
    ));
  }

  void onButtonDirectionPressed(PartnershipDataModel data) {
    launch("https://www.google.com/maps/search/?api=1&query=${double.parse(data.lat)},${double.parse(data.lang)}")
        .then((value) => Fluttertoast.showToast(msg: "Go to page"))
        .onError(
          (error, stackTrace) => Fluttertoast.showToast(msg: error.toString()),
        );
  }

  void onButtonCallPressed(PartnershipDataModel data) {
    if (data.phoneNumber == null) {
      Fluttertoast.showToast(msg: "No Phone Number Available");
    } else
      launch("tel:${data.phoneNumber}")
          .then((value) => Fluttertoast.showToast(msg: "Go to page"))
          .onError(
            (error, stackTrace) =>
                Fluttertoast.showToast(msg: error.toString()),
          );
  }

  void onButtonMessagePressed(PartnershipDataModel data) {
    if (data.phoneNumber == null) {
      Fluttertoast.showToast(msg: "No Phone Number Available");
    } else {
      var _result;
      final _data = data.phoneNumber.replaceAll('+', "");
      if (_data.substring(1) == "0") {
        _result = _data.replaceFirst("0", "62");
      } else if (_data.substring(1) == "8") {
        _result = "62" + _data;
      } else {
        _result = _data;
      }

      launch("https://wa.me/${_result}").then((e) {
        Fluttertoast.showToast(msg: "Go to page");
      }).onError(
        (error, stackTrace) => Fluttertoast.showToast(msg: error.toString()),
      );
    }
  }
}
