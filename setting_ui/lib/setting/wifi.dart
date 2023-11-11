import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';

class Wifie extends StatefulWidget {
  @override
  State<Wifie> createState() => _WifieState();
}

class _WifieState extends State<Wifie> {
  @override
  bool _value = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wifi'),
        actions: [
          Row(
            children: [
              Icon(Icons.document_scanner_sharp),
              SizedBox(width: 20),
              Icon(Icons.more_vert_outlined),
            ],
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: ListTileSwitch(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
                visualDensity: VisualDensity.comfortable,
                switchType: SwitchType.custom,
                switchActiveColor: Colors.green,
                title: Text(
                  'Wi-Fi',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
            ),
            Divider(thickness: 2),
            TextButton(
              onPressed: () {},
              child: Text('Wi-Fi Assistant',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
            Divider(thickness: 2),
            Common().list(
              txt: "Shree Ganesh",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_outlined),
              tap: () => Center(),
            ),
            Common().list(
              txt: "Raj Patel 5G",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_outlined),
              tap: () => Center(),
            ),
            Common().list(
              txt: "Dhaval",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_outlined),
              tap: () => Center(),
            ),
            Common().list(
              txt: "Darshan",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_outlined),
              tap: () => Center(),
            ),
            Common().list(
              txt: "Mohit 6G",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_outlined),
              tap: () => Center(),
            ),
            Common().list(
              txt: "Sagar Patel 1G",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_total_silence_outlined),
              tap: () => Center(),
            ),
            Common().list(
              txt: "Abhay 6G",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_outlined),
              tap: () => Center(),
            ),
            Common().list(
              txt: "Ravi Bhai 2G",
              icon: Icons.wifi,
              child: Icon(Icons.do_not_disturb_on_outlined),
              tap: () => const Center(),
            ),
            Divider(color: Colors.black, thickness: 2),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => network()));
                },
                icon: Icon(Icons.add),
                label: Text('Add Network'))
          ],
        ),
      ),
    );
  }
}

class network extends StatefulWidget {
  @override
  State<network> createState() => _networkState();
}

class _networkState extends State<network> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 300,
      width: 450,
      child: Card(
        color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Hotspot Name(required)",
                  hintText: "Enter",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter",
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.subdirectory_arrow_left),
              label: Text('Submit'),
            )
          ],
        ),
      ),
    ));
  }
}
