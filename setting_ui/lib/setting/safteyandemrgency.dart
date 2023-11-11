import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class Saftey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Safety & emergency')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 270,
                width: 420,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asstes/img/saftey.jpg'),
                        fit: BoxFit.cover))),
            Common().hosc(titl: 'Emergency contacts', stil: '3 contacts'),
            Common().hosc(titl: 'Medical info', stil: "Not set"),
            Common().hosc(titl: 'Emergency call & message', stil: ""),
            const Divider(endIndent: 20, indent: 20, thickness: 2),
            Common().hosc(titl: "", stil: "Google Play Services"),
            Common().hosc(titl: 'Emergency', stil: ""),
            Common().hosc(titl: 'Wireless emergency alerts', stil: ''),
            Common().hosc(titl: 'Emergency alert history', stil: "")
          ],
        ),
      ),
    );
  }
}
