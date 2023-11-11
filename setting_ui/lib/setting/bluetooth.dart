import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class bluto extends StatefulWidget {
  @override
  State<bluto> createState() => _blutoState();
}

class _blutoState extends State<bluto> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth'),
        actions: [Icon(Icons.more_vert_rounded)],
      ),
      body: Column(
        children: [
          ListTileSwitch(
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            visualDensity: VisualDensity.comfortable,
            switchType: SwitchType.custom,
            switchInactiveColor: Colors.black45,
            switchActiveColor: Colors.purple,
            title: Text(
              'Bluetooth',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          SizedBox(width: 5),
          ListTile(
            title: Text('Device Name'),
            subtitle: Text('One Plus 7', style: TextStyle(fontSize: 13)),
          ),
          Divider(
            thickness: 2,
            endIndent: 20,
            indent: 20,
          ),
          ListTile(
            title: Text('PAIRED DEVICES',
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.3))),
            subtitle: Row(
              children: [
                Icon(Icons.headphones_sharp),
                Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: Text(
                    'Prince Buds',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Icon(Icons.do_not_disturb_on_sharp),
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Row(children: [
            Text(
              'AVAILABEL DEVICE',
              style: TextStyle(color: Colors.black.withOpacity(0.3)),
            ),
          ]),
        ],
      ),
    );
  }
}
