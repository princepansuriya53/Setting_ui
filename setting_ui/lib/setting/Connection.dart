import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class connctshare extends StatefulWidget {
  @override
  State<connctshare> createState() => _connctshareState();
}

class _connctshareState extends State<connctshare> {
  bool _v1 = true;
  bool _v2 = true;
  bool _v3 = true;
  bool _v4 = true;
  bool _v5 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connection & sharing'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTileSwitch(
              value: _v1,
              onChanged: (value) {
                setState(() {
                  _v1 = value;
                });
              },
              switchType: SwitchType.custom,
              switchInactiveColor: Colors.grey,
              switchActiveColor: Colors.purple,
              title: Text(
                'Airplane Mode',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.5),
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(height: 30),
            ListTileSwitch(
              value: _v2,
              onChanged: (value) {
                setState(() {
                  _v2 = value;
                });
              },
              switchType: SwitchType.custom,
              switchInactiveColor: Colors.grey,
              switchActiveColor: Colors.purple,
              title: Text(
                'Personal hostpot',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            ListTileSwitch(
              value: _v3,
              onChanged: (value) {
                setState(() {
                  _v3 = value;
                });
              },
              switchType: SwitchType.custom,
              switchInactiveColor: Colors.grey,
              switchActiveColor: Colors.purple,
              title: Text(
                'Bluetooth tethering',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            ListTileSwitch(
              value: _v4,
              onChanged: (value) {
                setState(() {
                  _v4 = value;
                });
              },
              switchType: SwitchType.custom,
              switchInactiveColor: Colors.grey,
              switchActiveColor: Colors.purple,
              title: Text(
                'USB tethering',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              subtitle: Text(
                '''USB connected. Turn this on to share your internet connection ''',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            ),
            Divider(
              height: 50,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
                title: Text(
              'VPN',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            )),
            ListTile(
                title: Text(
              'NFC',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            )),
            ListTile(
                title: Text(
              'Private DNS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            )),
            ListTile(
                title: Text(
                  'Andriod Auto',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                subtitle: Text('''Use apps on your car display ''')),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1.5,
            ),
            ListTile(
              title: Text(
                'Screencast',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
            ),
            SizedBox(height: 2),
            ListTile(
              title: Text(
                'Print',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              subtitle: Text(
                'on',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(height: 2),
            ListTileSwitch(
                value: _v5,
                onChanged: (value) {
                  setState(() {
                    _v5 = value;
                  });
                },
                switchActiveColor: Colors.purple,
                switchInactiveColor: Colors.black45,
                title: Text('Quick device connect',
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                subtitle: Text(
                    'Discover and connect to your nearby device quickly',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)))),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
