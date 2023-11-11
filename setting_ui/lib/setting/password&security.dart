import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class Passeurity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Password & security')),
      body: Column(children: [
        Row(children: [
          Container(
              height: 180,
              width: 180,
              child: Card(
                color: Colors.black.withOpacity(0.000),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Common().lock(
                      ic: Icons.lock_outlined,
                      tt: """Lock Screen
Password""",
                      txts: "On")
                ]),
              )),
          Container(
              height: 180,
              width: 180,
              child: Card(
                  color: Colors.black.withOpacity(0.000),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Common().lock(
                        ic: Icons.tag_faces_outlined,
                        tt: "Face                      ",
                        txts: "On")
                  ])))
        ]),
        Row(children: [
          Container(
              height: 150,
              width: 180,
              child: Card(
                  color: Colors.black.withOpacity(0.000),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Common().lock(
                        ic: Icons.fingerprint,
                        tt: "Fingerprint     ",
                        txts: "Enrolled")
                  ]))),
          Container(
              height: 150,
              width: 180,
              child: Card(
                  color: Colors.black.withOpacity(0.000),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Common().lock(
                        ic: Icons.lock_outlined,
                        tt: "Privacy Password",
                        txts: "Off")
                  ])))
        ]),
        Common().hosc(titl: 'Managr password', stil: ""),
        Common().space(thickness: 5, indent: 20, endIndent: 20),
        Common().hosc(titl: 'System security', stil: ''),
      ]),
    );
  }
}
