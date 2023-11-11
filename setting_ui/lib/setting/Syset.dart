import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import '../allwidget.dart';

class seyset extends StatefulWidget {
  @override
  _seysetState createState() => _seysetState();
}

class _seysetState extends State<seyset> {
  bool _v1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('System settings')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Common().hosc(titl: "System navigation", stil: "Gestures"),
            Common().hosc(titl: "Language", stil: ""),
            Common().hosc(titl: "Keyboard & input method", stil: ""),
            Common().hosc(titl: "Date & time", stil: ""),
            Common().space(thickness: 0, indent: 0, endIndent: 0),
            Common().hosc(titl: "Accessibility", stil: ""),
            Common().hosc(titl: "Gestures & motions", stil: ""),
            Common().hosc(titl: "One-handed mode", stil: "Off"),
            Common().hosc(titl: "Power menu", stil: "Hold for Assistant"),
            Common().space(thickness: 0, indent: 0, endIndent: 0),
            ListTileSwitch(
              value: _v1,
              onChanged: (value) => setState(() => _v1 = value),
              switchActiveColor: Colors.purple,
              switchInactiveColor: Colors.grey,
              title: Text('OTG connection'),
              subtitle:
                  Text('Automatically turns off if not used for 10 minutes.'),
            ),
            Common().hosc(titl: "Developer options", stil: ""),
            Common().hosc(
                titl: "RAM Boost",
                stil: "Optimized RAM utilization based on your usage"),
            Common().hosc(titl: "Back up and reset", stil: ""),
          ],
        ),
      ),
    );
  }
}
