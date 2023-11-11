import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import '../allwidget.dart';

class digiweb extends StatefulWidget {
  @override
  State<digiweb> createState() => _digiwebState();
}

class _digiwebState extends State<digiweb> {
  @override
  bool _v1 = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Wellbeng'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 50),
                child: Text(
                  '''Digital Wellbeng & 
parent controls''',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                )),
            ListTile(
                leading: Icon(Icons.bar_chart),
                title: Text('Your Digital wellbeing tools',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Container(
              height: 375,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asstes/img/digiweb.jpg"))),
            ),
            Common().hosc(titl: "Ways to disconnect", stil: ""),
            cade().digi(tit: "Dashboard", sut: "No timers set "),
            cade().digi(tit: "Bedtime mode", sut: "Tap to set up "),
            cade().digi(tit: "Focus mode", sut: "Tap to set up"),
            Common().hosc(titl: "Reduce interrupions", stil: ""),
            cade().digi(tit: "Manage notifications", sut: ""),
            cade().digi(tit: "Don not Disturb", sut: ""),
            cade().digi(tit: "Heads Up", sut: "on"),
            ListTileSwitch(
                value: _v1,
                onChanged: (value) => setState(() => _v1 = value),
                switchInactiveColor: Colors.grey,
                switchActiveColor: Colors.brown[400],
                title: Text('Show icon in the app list',
                    style: TextStyle(fontSize: 25))),
            ListTile(
                title: Text('Parental Controls',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                leading: Icon(Icons.people, size: 30),
                subtitle: Text(
                    '''Add content restriction and set other limits to help your child balance their screen time''')),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text('Set up parental controls',
                      style: TextStyle(
                        color: Colors.brown[400],
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
