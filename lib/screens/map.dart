import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class OpenStreetMapWithMarkers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OpenStreetMap with Markers')),
      body: FlutterMap(
        options: MapOptions(
          initialCenter:
              LatLng(37.7749, -122.4194), // San Francisco coordinates
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.yourapp',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(37.7749, -122.4194),
                width: 40,
                height: 40,
                child: Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
