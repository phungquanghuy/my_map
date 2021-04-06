import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMain extends StatefulWidget {
  MapMain({Key key}) : super(key: key);

  @override
  _MapMainState createState() => _MapMainState();
}

class _MapMainState extends State<MapMain> {
  GoogleMapController controller;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          controller = controller;
        },
      ),
    );
  }
}