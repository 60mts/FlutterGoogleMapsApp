import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: camel_case_types
class maps extends StatefulWidget {
  maps({Key? key}) : super(key: key);

  @override
  _mapsState createState() => _mapsState();
}

void main() {
  runApp(maps());
}

// ignore: camel_case_types
class _mapsState extends State<maps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("MAPS"),
              centerTitle:true,
            ),
            body: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(40.1234, 36.15), zoom: 15.0),
              trafficEnabled: true,
              mapType: MapType.hybrid,
            )));
  }
}
