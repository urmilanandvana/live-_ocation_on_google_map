import 'package:flutter/material.dart';
import 'package:location_google_map/screen/current_location.dart';
import 'package:location_google_map/screen/live_location.dart';

import 'screen/google_map.dart';
import 'screen/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'current_location': (context) => const CurrentLocation(),
        'live_location': (context) => const LiveLocation(),
        'google_map': (context) => const GoogleMapPage(),
      },
    ),
  );
}
