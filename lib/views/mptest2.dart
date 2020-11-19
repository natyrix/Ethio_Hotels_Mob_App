import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class HMap2 extends StatefulWidget {
  @override
  _HMap2State createState() => _HMap2State();
}

class _HMap2State extends State<HMap2> {
  double _lat = 28.596429;
  double _long = 77.190628;
  GlobalKey<OSMFlutterState> mapKey = GlobalKey<OSMFlutterState>();
  getMylocation()async{
    try{
      GeoPoint p = await mapKey.currentState.myLocation();
      double lat = p.latitude;
      double lon = p.longitude;
      setState(() {
        _lat = lat;
        _long = lon;
      });
      print("latitude is: $lat, longitude is: $lon");
    }on GeoPointException catch (e){
      print("${e.errorMessage()}");
    }
  }
  // drawRoadOnMap()async{
  //   try{
  //     await mapKey.currentState.drawRoad(
  //       GeoPoint(latitude: 28.596429, longitude: 77.190628),
  //         GeoPoint(latitude: 28.4573802, longitude: 73.1424312)
  //     );
  //   }on RoadException catch(e){
  //     print("${e.errorMessage()}");
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hhhh'),),
      body: OSMFlutter(
        key: mapKey,
        currentLocation: true,
        road: Road(
          startIcon: MarkerIcon(
            icon: Icon(Icons.person, size: 70, color: Colors.red,),
          ),
          roadColor: Colors.black,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(Icons.person_pin_circle, color: Colors.red, size: 70,),
        ),
        initPosition: GeoPoint(latitude: 28.596429, longitude: 77.190628),
        useSecureURL: false,
      ),
    );
  }
}