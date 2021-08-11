import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'dart:async';
import 'package:graduation_project/src/locations.dart' as locations;
import 'package:geolocator/geolocator.dart';

// ignore: camel_case_types
final places =
     GoogleMapsPlaces(apiKey: "<AIzaSyCgvabsEb0EHnLIM57JoonghWMkApZY3H0>");

Future<PlacesSearchResponse> response = places.searchNearbyWithRadius(
    Location(
      lng: 31.0424,
      lat: 42.421,
    ),
    500);

class Map_Location extends StatefulWidget {
  @override
  _Map_LocationState createState() => _Map_LocationState();
}

// ignore: camel_case_types
class _Map_LocationState extends State<Map_Location> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.207715950082257, 29.91869243382655),
    zoom: 10,
  );
  Future<Position> position =
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  @override
  Widget build(BuildContext context) {
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
        mapType: MapType.normal,
        myLocationEnabled: true,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the lake!'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
}
