import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';

class jagya extends StatefulWidget {
  @override
  _jagyaState createState() => _jagyaState();
}

class _jagyaState extends State<jagya> {
  bool _v1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Location')),
      body: SingleChildScrollView(
        child: Column(children: [
          ListTileSwitch(
              value: _v1,
              onChanged: (value) => setState(() => _v1 = value),
              title: const Text('Location',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          Common().space(thickness: 0, indent: 0, endIndent: 0),
          Common().hosc(titl: '', stil: 'POSITIONING CONTROL'),
          Common().hosc(titl: 'Wi-Fi and and Bluethooth scanning', stil: ''),
          Common().space(thickness: 0, indent: 0, endIndent: 0),
          Common().hosc(titl: "", stil: "RECENT LOCATION  REQUESTS"),
          Bat().power(
              imge: "asstes/img/ins.jpg",
              tit: "Instagrm",
              sub: "Low Power consumption"),
          Bat().power(
              imge: "asstes/img/wats.jpg",
              tit: "WhatsApp",
              sub: "High Power consumption"),
          Bat().power(
              imge: "asstes/img/yt.jpg",
              tit: "WhatsApp",
              sub: "midum Power consumption"),
          Common().space(thickness: 0, indent: 0, endIndent: 0),
          Common().goole(
              images: "asstes/img/goog.png", txt: "Google Location Accuracy"),
          Common().goole(
              images: "asstes/img/goog.png", txt: "Google Location History"),
          Common().goole(
              images: "asstes/img/goog.png", txt: "Google Location Sharing"),
        ]),
      ),
    );
  }
}
