import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../global/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  currentPermission() async {
    await Permission.location.request();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff042326),
        title: const Text("Google Map"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff042326),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
              ),
              onPressed: () async {
                Position position = await Geolocator.getCurrentPosition();

                setState(
                  () {
                    Global.lat = position.latitude;
                    Global.long = position.longitude;
                    Navigator.of(context).pushNamed('current_location');
                  },
                );
              },
              child: const Text(
                "Current Location",
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff042326),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
              ),
              onPressed: () async {
                Geolocator.getPositionStream().listen((Position position) {
                  setState(() {
                    Global.lat = position.latitude;
                    Global.long = position.longitude;
                    Navigator.of(context).pushNamed('current_location');
                  });
                });
              },
              child: const Text(
                "Live Location",
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff042326),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('google_map');
              },
              child: const Text(
                "location on google map",
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
