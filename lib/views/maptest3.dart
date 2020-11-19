import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class HMap extends StatefulWidget {
  @override
  _HMapState createState() => _HMapState();
}

class _HMapState extends State<HMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: FlutterMap(options: MapOptions(
        minZoom: 10.0,
        center: LatLng(27.175003, 78.0421170902921)
      ),
      layers: [
        TileLayerOptions(
         urlTemplate: "https://api.mapbox.com/styles/v1/natrix/ckg6wnrz7114z19nwrt4j8taw/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibmF0cml4IiwiYSI6ImNrM2FkeXZhZzBhdGgzZ21ycGM0bzd1MXIifQ.RWcyUBbXiv2jbzebgNNdSA",
          additionalOptions: {
            'accessToken': 'pk.eyJ1IjoibmF0cml4IiwiYSI6ImNrM2FkeXZhZzBhdGgzZ21ycGM0bzd1MXIifQ.RWcyUBbXiv2jbzebgNNdSA',
            'id': 'mapbox.streets',
          },
        ),
        // MarkerLayerOptions(
        //   markers: [
        //     Marker(
        //       width: 80,
        //       height: 80,
        //       point:  LatLngBounds,
        //       builder: (context)=>Container(child: FlutterLogo(),)
        //     ),
        //   ]
        // )
      ],
      ),
    );
  }
}