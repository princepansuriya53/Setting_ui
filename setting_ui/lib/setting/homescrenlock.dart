import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool _v1 = false;
  bool _v2 = false;
  bool _v3 = false;
  bool _v4 = false;
  bool _v5 = false;
  bool _v6 = false;
  bool _v7 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home screen & Lock screen'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('HOME SCREEN',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black45,
                              fontWeight: FontWeight.w900)),
                      Common()
                          .hosc(titl: "Home screen mode", stil: "Drawer mode"),
                      Common().hosc(titl: "Home screen layout", stil: "4 x 5"),
                      ListTileSwitch(
                          title: const Text('Lock Home screen layout'),
                          autoFocus: true,
                          subtitle: const Text(
                              '''Lcok the Home screen layout to pervent it from beging changed'''),
                          value: _v1,
                          switchActiveColor: Colors.purple,
                          switchInactiveColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              _v1 = value;
                            });
                          }),
                      ListTileSwitch(
                          title: const Text('icon autofill'),
                          autoFocus: true,
                          value: _v2,
                          switchActiveColor: Colors.purple,
                          switchInactiveColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              _v2 = value;
                            });
                          }),
                      Common().hosc(
                          titl: "icon pull-down gesture",
                          stil: "Open apps on thr Home screen with on hand"),
                      ListTileSwitch(
                          title: const Text('icon autofill'),
                          autoFocus: true,
                          value: _v3,
                          switchActiveColor: Colors.purple,
                          switchInactiveColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              _v3 = value;
                            });
                          }),
                      Common().hosc(
                          titl: 'Swipe down on Home screen',
                          stil: "Notification drawer"),
                      Common().hosc(
                          titl: "App animation speed",
                          stil:
                              '''Adjust the speed of app startup and closing animations.
Fast '''),
                      Common().hosc(
                        titl: "icon pull-down gesture",
                        stil: "Open apps on thr Home screen with on hand",
                      ),
                      ListTileSwitch(
                        title: const Text('Show App suggetions'),
                        autoFocus: true,
                        value: _v4,
                        switchActiveColor: Colors.purple,
                        switchInactiveColor: Colors.grey,
                        onChanged: (value) {
                          setState(() {
                            _v4 = value;
                          });
                        },
                      ),
                      ListTileSwitch(
                        title: const Text('Add apps to Home screen'),
                        subtitle: const Text(
                            'Newly downloaded apps will be added to the home screen'),
                        autoFocus: true,
                        value: _v5,
                        switchActiveColor: Colors.purple,
                        switchInactiveColor: Colors.grey,
                        onChanged: (value) {
                          setState(() {
                            _v5 = value;
                          });
                        },
                      ),
                      const Divider(endIndent: 20, indent: 20, thickness: 2),
                      Text('LOCK SCREEN'),
                      ListTileSwitch(
                          title: const Text('Rais to wake'),
                          autoFocus: true,
                          value: _v6,
                          switchActiveColor: Colors.purple,
                          switchInactiveColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              _v6 = value;
                            });
                          }),
                      ListTileSwitch(
                          title: const Text(
                              'Double-tap to wake or turn off screen'),
                          autoFocus: true,
                          value: _v7,
                          switchActiveColor: Colors.purple,
                          switchInactiveColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              _v7 = value;
                            });
                          }),
                      const Text('RECENT TASKS',
                          style: TextStyle(fontSize: 13, color: Colors.black)),
                      const SizedBox(height: 15),
                      const Text('Recent tasks manager',
                          style: TextStyle(fontSize: 17)),
                      Container(
                          height: 120,
                          width: 430,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('You might be looking for:',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black26)),
                                    const SizedBox(height: 30),
                                    const Text('System navigation',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    const SizedBox(height: 25),
                                    const Text('Always-On Display',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800))
                                  ])))
                    ]))));
  }
}
