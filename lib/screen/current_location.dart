import 'package:flutter/material.dart';

import '../global/global.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  TextStyle textStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff042326),
        title: const Text("Current Location"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " Latitude : ${Global.lat}",
              style: textStyle,
            ),
            Text(
              "Longitude : ${Global.long}",
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
