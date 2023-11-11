import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class modata extends StatefulWidget {
  @override
  State<modata> createState() => _modataState();
}

class _modataState extends State<modata> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Network'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: Container(
                    height: 120,
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      color: Colors.black,
                      child: Column(
                        children: [
                          Icon(
                            Icons.sim_card,
                            color: Colors.green,
                            size: 30,
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Sim 1',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '95585-02111',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 160,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                    color: Colors.black,
                    child: Column(
                      children: [
                        Icon(
                          Icons.sim_card,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Sim 2',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'No Sim Card',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListTileSwitch(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              visualDensity: VisualDensity.comfortable,
              switchType: SwitchType.cupertino,
              switchActiveColor: Colors.purple,
              title: Text(
                'Mobile data',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SizedBox(),
            ListTile(
              title: Text('Calling'),
              subtitle: Text('Sim 1'),
            ),
            ListTile(
              title: Text('Internet'),
              subtitle: Text('Sim 1'),
            ),
            Divider(
              thickness: 2,
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              title: Text('Data Usinge'),
            ),
            ListTile(
              title: Text(
                "O Roming",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                  '''Purchase an internation data Packaage to access the internert without a SIM Card. '''),
            ),
            SizedBox(width: 10),
            ListTile(title: Text('Advanced Settings')),
            Container(
                height: 90,
                width: 360,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      "You might be looking for:",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Call settings',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 17)),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
