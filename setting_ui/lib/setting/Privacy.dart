import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';

class pri extends StatefulWidget {
  @override
  _priState createState() => _priState();
}

class _priState extends State<pri> {
  bool _v1 = true;
  bool _v2 = true;
  bool _v3 = true;
  bool _v4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Privacy')),
        body: SingleChildScrollView(
            child: Column(children: [
          Common().space(thickness: 2, indent: 0, endIndent: 52),
          Common().hosc(titl: 'Privacy dashboard', stil: ""),
          Common().hosc(titl: "", stil: "APP PERMISSIONS"),
          Common().hosc(titl: 'Permission manger', stil: ''),
          ListTileSwitch(
              value: _v1,
              onChanged: (value) => setState(() => _v1 = value),
              title: Text('Camera access'),
              subtitle: Text(
                  ''' When this is off, all appas and service will not be able to use thr camera.'''),
              switchActiveColor: Colors.purple,
              switchInactiveColor: Colors.grey),
          SizedBox(height: 18),
          ListTileSwitch(
              value: _v2,
              onChanged: (value) => setState(() => _v2 = value),
              title: const Text('Microphone access'),
              subtitle: const Text(
                  '''When this is off,all apps and service will not be able to use the microphone'''),
              switchActiveColor: Colors.purple,
              switchInactiveColor: Colors.grey),
          Common().space(thickness: 0, indent: 0, endIndent: 0),
          Common().hosc(titl: "", stil: "PRIVACY PROTECTION"),
          Row(children: [
            Container(
                height: 130,
                width: 180,
                child: Card(
                    color: Colors.black.withOpacity(0.000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Common().lock(
                          ic: Icons.screen_lock_portrait_outlined,
                          tt: 'App lock',
                          txts: "")
                    ]))),
            Container(
                height: 130,
                width: 180,
                child: Card(
                    color: Colors.black.withOpacity(0.000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Common().lock(
                          ic: Icons.preview_sharp, tt: 'Hide app', txts: ""),
                    ])))
          ]),
          Row(children: [
            Container(
                height: 130,
                width: 180,
                child: Card(
                    color: Colors.black.withOpacity(0.000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Common().lock(
                          ic: Icons.enhanced_encryption_outlined,
                          tt: 'Private Safe',
                          txts: ""),
                    ])))
          ]),
          Common().hosc(titl: '', stil: 'PRIVECY'),
          ListTileSwitch(
              value: _v3,
              onChanged: (value) => setState(() => _v3 = value),
              title: Text('Show password'),
              subtitle: Text('''Display characters briefly as you type.'''),
              switchActiveColor: Colors.purple,
              switchInactiveColor: Colors.grey),
          Common().hosc(titl: "Experince improvement programs", stil: ""),
          Common().hosc(titl: "Adcanced", stil: ""),
          ListTileSwitch(
              value: _v4,
              onChanged: (value) => setState(() => _v4 = value),
              title: Text('Alert me when apps read clipboard'),
              switchActiveColor: Colors.purple,
              switchInactiveColor: Colors.grey),
        ])));
  }
}
