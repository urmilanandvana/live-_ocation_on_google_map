import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../global/global.dart';

class LiveLocation extends StatefulWidget {
  const LiveLocation({Key? key}) : super(key: key);

  @override
  State<LiveLocation> createState() => _LiveLocationState();
}

class _LiveLocationState extends State<LiveLocation> {
  TextStyle textStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live Location"),
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
