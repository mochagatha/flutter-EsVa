import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  MapUtils._();

  static Future<void> openMap(
  double latitude, 
  double longitude,
  ) async {
    String googleMapUrl = 
    "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";

    if(await canLaunch(googleMapUrl)) {
      await launch(googleMapUrl);
    } else {
      throw 'could not open the map';
    }
  }
}
class GoogleMap extends StatefulWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  State<GoogleMap> createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMap> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red
             ),
             onPressed: () {
              MapUtils.openMap(47.628293260721, -122.34263420105);
             },
             child: Text(
              'Open Google Map',
              style: TextStyle(color: Colors.white,)
             ),
          ),
        ),
        )
      );
  }
}