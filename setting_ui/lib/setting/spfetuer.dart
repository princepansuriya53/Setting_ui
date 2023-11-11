import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class specialfe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Special features')),
      body: Column(
        children: [
          cade().carder(
              ic: Icons.ac_unit,
              txt: "Qucik launch",
              sutx:
                  """Access frequently used functions while unlocking your device"""),
          cade().carder(
              ic: Icons.device_unknown_sharp,
              txt: "Oneplush Shelf",
              sutx:
                  """Add widgets and get info on weather, steps taken,add more!"""),
          cade().carder(
              ic: Icons.work_outline_outlined,
              txt: "Work life balnce",
              sutx:
                  """Strike the balence between your personal and professional life."""),
          cade().carder(
              ic: Icons.saved_search_sharp,
              txt: "Scout",
              sutx: "Unlock a smarter search for in depth result across Apps."),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            width: 360,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Common().hosc(titl: "", stil: "You might be looking For:"),
                  cade().tile(tit: 'Gestures & motions'),
                  cade().tile(tit: 'Screenshot'),
                  cade().tile(tit: 'Screen recording'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
