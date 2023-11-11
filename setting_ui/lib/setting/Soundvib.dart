import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';

class sounvibe extends StatefulWidget {
  @override
  State<sounvibe> createState() => _sounvibeState();
}

class _sounvibeState extends State<sounvibe> {
  bool _v1 = true;
  bool _v2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sound & vibration')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Common().hosc(
                titl: "Live Caption", stil: "Automatically caption speech"),
            Common().hosc(titl: "Do Not Disturb", stil: "Off"),
            const Divider(indent: 20, endIndent: 20, thickness: 1.10),
            const Padding(
                padding: EdgeInsets.only(right: 300),
                child: Text('VOLUME',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black45))),
            Common().avaj(led: Icons.music_note_rounded, text: "Media"),
            Common().avaj(led: Icons.ring_volume_rounded, text: "Rington"),
            Common()
                .avaj(led: Icons.notification_add_sharp, text: "Notifications"),
            Common().avaj(led: Icons.alarm, text: "Alarms"),
            const Divider(indent: 20, endIndent: 20, thickness: 1.10),
            ListTileSwitch(
                title: Text('Media Volume muted'),
                subtitle: Text(
                    '''The media volume and device are simultanesouly , you may make any adjustments manually'''),
                value: _v1,
                switchActiveColor: Colors.purple,
                switchInactiveColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _v1 = value;
                  });
                }),
            const Divider(
                indent: 20, endIndent: 20, thickness: 1.10, height: 50),
            Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text('RINGTONES'),
            ),
            Common().hosc(
                titl: "Rington",
                stil: "See you agin insturmants rington.mp300"),
            Common().hosc(titl: "Message tone", stil: "Ding"),
            Common().hosc(titl: "Notification sound", stil: "Whoop-doop"),
            const Divider(
                indent: 20, endIndent: 20, thickness: 1.50, height: 50),
            ListTileSwitch(
                title: Text('Vibrate on ring'),
                value: _v2,
                switchActiveColor: Colors.purple,
                switchInactiveColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _v2 = value;
                  });
                }),
            Common().hosc(titl: 'Haptics and tons', stil: ""),
            const Divider(
                indent: 20, endIndent: 20, thickness: 1.50, height: 50),
            Common().hosc(titl: "Dollby Atmos", stil: ""),
            Common().hosc(titl: "Advanced settings", stil: ""),
            Container(
              height: 155,
              width: 370,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Common().hosc(titl: "", stil: "You might be looking for"),
                    Common()
                        .hosc(titl: "Reduce notification feedback", stil: '')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
