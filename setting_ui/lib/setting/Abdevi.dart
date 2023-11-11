import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About device')),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                    color: Colors.blueGrey[100],
                    child: ListTile(
                      title: Text('Up to date'),
                      subtitle: Text('Official versions'),
                      leading: Image(image: AssetImage('asstes/img/os.png')),
                    )),
              )),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Bat().abt(ico: Icons.help_rounded, titl: "Device name", tir: "1+7"),
            Bat().abt(
                ico: Icons.storage_rounded,
                titl: "Storage",
                tir: '''68.5 GB used/1Tb''')
          ]),
          Common().space(thickness: 0, indent: 0, endIndent: 0),
          Bat().writ(titl: "Processor", tral: '''Qualcomm 
Snapdragon 
855 Octa-core'''),
          Bat().writ(titl: "Model", tral: "GM 1901"),
          Common().space(thickness: 0, indent: 0, endIndent: 0),
          ListTile(
            title: Text('RAM',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            trailing: Wrap(
              children: [
                Text('32.00 GB'),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: Text("+8.00GB", style: TextStyle(color: Colors.white)),
                ),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
          ),
          Bat().writ(titl: "Android version", tral: "12"),
          Bat().writ(titl: "Version", tral: ""),
          Bat().writ(titl: "Legal infromation", tral: ""),
          Bat().writ(titl: 'Status', tral: ""),
          Common().space(thickness: 0, indent: 0, endIndent: 0),
          Common().hosc(titl: 'Award', stil: "OxygenOS Contributors"),
        ],
      )),
    );
  }
}
