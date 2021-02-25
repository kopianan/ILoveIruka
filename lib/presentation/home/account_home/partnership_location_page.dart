import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PartnershipLocationPage extends StatefulWidget {
  static final String TAG = "/partnership_location_page";
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
  Marker marker1 = Marker(
    position: LatLng(-6.7138127, 108.5491515),
    markerId: MarkerId("Data 1"),
    onTap: () {},
    infoWindow: InfoWindow(
      title: "Test",
    ),
  );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          buildingsEnabled: true,
          // liteModeEnabled: true,
          mapToolbarEnabled: false,
          tileOverlays: {
            TileOverlay(tileOverlayId: TileOverlayId("test,"), tileSize: 20)
          },
          markers: {marker1},
          initialCameraPosition: CameraPosition(
            target: LatLng(-6.7138127, 108.5491515),
            zoom: 10,
          ),
          onTap: (latlang) {},
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
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
                    icon: Icon(Icons.arrow_back_rounded),
                    onPressed: () {
                      Get.back(closeOverlays: true);
                    }),
                Expanded(
                  child: TextFormField(
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 10, left: 15),
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
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
