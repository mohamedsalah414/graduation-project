import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:graduation_project/src/locations.dart' as locations;
import 'package:geolocator/geolocator.dart';

import 'cinema.dart';

class Map_LocationC1 extends StatefulWidget {
  Cinema cinema;
  Map_LocationC1(
      this.cinema
      );
  @override
  _Map_LocationC1State createState() => _Map_LocationC1State( this.cinema);
}

// ignore: camel_case_types
class _Map_LocationC1State extends State<Map_LocationC1> {
  _Map_LocationC1State(
      this.cinema,
      );
  Cinema cinema;

  final Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kintialPlex = CameraPosition(
    target: LatLng(31.2095404689087, 29.908866241944896),
    zoom: 15,
  );

  static final CameraPosition _kRenaissancePlex = CameraPosition(
    target: LatLng(31.245314554923958, 29.967594082690294),
    zoom: 19,
  );
  static final CameraPosition _kvoxPlex = CameraPosition(
    target: LatLng(31.167101996872965, 29.93260200483231),
    zoom: 19,
  );



  @override
  Widget build(BuildContext context) {
    Cinema cinema;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff283e66),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          ),
          centerTitle: true,
          title: Text('Map')
          //Text("Food"),

          ),
      body: GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        myLocationEnabled: true,
        initialCameraPosition: _kintialPlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goTovox,
        label: Text('To the vox'),
        icon: Icon(Icons.directions_boat),

      ),
    );
  }

  Future<void> _goTovox() async {
    Cinema cinema;
    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(_kvoxPlex));
    // if (cinema.id == '22') {
    //   controller.animateCamera(CameraUpdate.newCameraPosition(_kvoxPlex));
    // }else if(cinema.id == '21'){
    //   controller.animateCamera(CameraUpdate.newCameraPosition(_kRenaissancePlex));
    // }else{
    //   controller.animateCamera(CameraUpdate.newCameraPosition(_kintialPlex));
    // }
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
}




class Map_LocationC2 extends StatefulWidget {
  Cinema cinema;
  Map_LocationC2(
      this.cinema
      );
  @override
  _Map_LocationC2State createState() => _Map_LocationC2State( this.cinema);
}

// ignore: camel_case_types
class _Map_LocationC2State extends State<Map_LocationC2> {
  _Map_LocationC2State(
      this.cinema,
      );
  Cinema cinema;

  final Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kintialPlex = CameraPosition(
    target: LatLng(31.2095404689087, 29.908866241944896),
    zoom: 15,
  );

  static final CameraPosition _kRenaissancePlex = CameraPosition(
    target: LatLng(31.245314554923958, 29.967594082690294),
    zoom: 19,
  );
  static final CameraPosition _kvoxPlex = CameraPosition(
    target: LatLng(31.167101996872965, 29.93260200483231),
    zoom: 19,
  );



  @override
  Widget build(BuildContext context) {
    Cinema cinema;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff283e66),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          ),
          centerTitle: true,
          title: Text('Map')
        //Text("Food"),

      ),
      body: GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        myLocationEnabled: true,
        initialCameraPosition: _kintialPlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goTovox,
        label: Text('To the res'),
        icon: Icon(Icons.directions_boat),

      ),
    );
  }

  Future<void> _goTovox() async {
    Cinema cinema;
    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(_kRenaissancePlex));
    // if (cinema.id == '22') {
    //   controller.animateCamera(CameraUpdate.newCameraPosition(_kvoxPlex));
    // }else if(cinema.id == '21'){
    //   controller.animateCamera(CameraUpdate.newCameraPosition(_kRenaissancePlex));
    // }else{
    //   controller.animateCamera(CameraUpdate.newCameraPosition(_kintialPlex));
    // }
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
}


