import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  bool v1 = false;
  bool v2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display & brightness '),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('asstes/img/radio.jpg'),
                  fit: BoxFit.contain,
                ))),
            Common().hosc(
                titl: "Auto Switch", stil: "Switch to Dark mode at sunset"),
            const Divider(indent: 20, endIndent: 20, thickness: 1.10),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('BRIGHTNESS',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black45)),
            ),
            ListTile(
                leading: Icon(
                  Icons.dark_mode,
                  color: Colors.black,
                ),
                title: BalloonSlider(
                    value: 0.5,
                    ropeLength: 55,
                    onChanged: (val) {},
                    color: Colors.indigo),
                trailing: Icon(Icons.light_mode_sharp, color: Colors.amber)),
            ListTileSwitch(
              onChanged: (value) {
                setState(() {
                  v1 = value;
                });
              },
              value: v1,
              title: Text('Auto brightness'),
              autoFocus: true,
              switchActiveColor: Colors.purple,
              switchInactiveColor: Colors.grey,
            ),
            const Divider(indent: 20, endIndent: 20, thickness: 1.10),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text('Screen Color mode',
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
            ),
            Common().hosc(titl: 'Eye comfrot', stil: "Turns on at 8:00PM"),
            const Divider(indent: 20, endIndent: 20, thickness: 1.10),
            const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text('VIDEO ENHACEMENT ENGINE',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black45))),
            Common().hosc(titl: "Video color enhancer", stil: "On"),
            const Divider(indent: 20, endIndent: 20, thickness: 1.10),
            ListTileSwitch(
              onChanged: (value) {
                setState(() {
                  v2 = value;
                });
              },
              value: v2,
              title: Text('Auto rotate'),
              autoFocus: true,
              switchActiveColor: Colors.purple,
              switchInactiveColor: Colors.grey,
            ),
            Common().hosc(titl: "Auto screen off", stil: "2 minutes"),
            const Padding(
              padding: EdgeInsets.only(left: 18, bottom: 30),
              child: Text('Screen display',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black)),
            ),
            Container(
              height: 150,
              width: 380,
              child: Card(
                borderOnForeground: true,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 190, top: 10),
                        child: Text('You might be looking for:',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black45))),
                    const Padding(
                      padding: EdgeInsets.only(top: 18, right: 180),
                      child: Text('Font & display size',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black)),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 18, right: 230),
                        child: Text('Wallpapers',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
