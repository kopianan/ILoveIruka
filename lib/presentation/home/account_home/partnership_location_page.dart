import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PartnershipLocationPage extends StatefulWidget {
  static const String TAG = "/partnership_location_page";
  PartnershipLocationPage({Key key}) : super(key: key);

  @override
  _PartnershipLocationPageState createState() =>
      _PartnershipLocationPageState();
}

class _PartnershipLocationPageState extends State<PartnershipLocationPage> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.7138127, 108.5491515),
    zoom: 5,
  );

  CarouselController carouselController = CarouselController();

  // List<Marker> markers = List<Marker>();
  List<DummyMap> mapList = <DummyMap>[];
  bool isCarouselHide = false;
  void initMapList() {
    mapList.add(DummyMap("Place 1", 108.5491515, -6.7138127));
    mapList.add(DummyMap("Place 2", 102.146331, -1.302602));
    mapList.add(DummyMap("Place 3", 108.514797, -6.707118));
    mapList.add(DummyMap("Place 4", 108.452057, 6.682138));
    mapList.add(DummyMap("Place 4", 108.029779, -2.968659));
  }

  GoogleMapController controller;
  Marker currentMarker;
  @override
  void initState() {
    initMapList();
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
          // liteModeEnabled: true,
          mapToolbarEnabled: false,

          markers: mapList
              .map((e) => Marker(
                    position: LatLng(e.lat, e.lang),
                    markerId: MarkerId(e.name),
                    onTap: () async {
                      final _currPage = mapList.indexOf(e);

                      Future.delayed(Duration(milliseconds: 800)).then(
                          (value) => carouselController.jumpToPage(_currPage));
                      setState(() {
                        isCarouselHide = true;
                      });
                    },
                  ))
              .toSet(),
          initialCameraPosition: CameraPosition(
            target: LatLng(-6.7138127, 108.5491515),
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
          top: 20,
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
                    
                    icon: Icon(Icons.arrow_back_rounded),
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
                          items: mapList
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
                                            "Nama Tempat",
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.grey,
                                                child: Icon(Icons.call,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Colors.grey,
                                                child: Icon(Icons.place,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Colors.grey,
                                                child: Icon(Icons.chat_bubble,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          )
                                        ],
                                      ))))
                              .toList(),
                          options: buildCarouselOptions(),
                        ),
                      ],
                    ),
            ))
      ],
    ));
  }

  CarouselOptions buildCarouselOptions() {
    return CarouselOptions(
        height: 170,
        onPageChanged: (page, reaseon) {
          controller.animateCamera(CameraUpdate.newLatLngZoom(
              LatLng(
                mapList[page].lat,
                mapList[page].lang,
              ),
              12));
        });
  }
}

class DummyMap {
  String name;
  double lat;
  double lang;

  DummyMap(this.name, this.lang, this.lat);
}
