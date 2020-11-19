import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

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
        minZoom: 10.0
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['a', 'b', 'c']
        ),
      ],
      ),
    );
  }
}