import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mymap/ultis/constant.dart';

class MapMain extends StatefulWidget {
  MapMain({Key key}) : super(key: key);

  @override
  _MapMainState createState() => _MapMainState();
}

class _MapMainState extends State<MapMain> {
  GoogleMapController controller;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: MapConstant.kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          controller = controller;
        },
      ),
    );
  }
}