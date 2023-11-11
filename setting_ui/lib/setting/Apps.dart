import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class Appses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apps'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Common().hosc(titl: 'App mangement', stil: ""),
            Common().hosc(titl: 'Defalut apps', stil: ""),
            Common().hosc(titl: 'Disabled apps', stil: ""),
            Common().space(thickness: 0, indent: 0, endIndent: 0),
            Common().hosc(titl: 'Special app access', stil: ""),
            Common().hosc(titl: 'Auto launch', stil: ""),
            Common().hosc(titl: 'Display over other apps', stil: ""),
            Common().hosc(
                titl: 'App cloner',
                stil:
                    """Some apps can be closed.The cloned app will appear on the Home screen amd can run at the same time aas the origanl app."""),
            Common().space(thickness: 0, indent: 0, endIndent: 0),
            Container(
                height: 140,
                width: 380,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Common().hosc(titl: "", stil: "You might be looking for:"),
                    ListTile(
                        title: Text('App lock',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ]),
                )),
          ],
        ),
      ),
    );
  }
}
