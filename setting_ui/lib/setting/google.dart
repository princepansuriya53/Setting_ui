import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class goo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [
        Icon(Icons.help),
        SizedBox(width: 20),
        Icon(Icons.more_vert_rounded)
      ]),
      body: SingleChildScrollView(
          child: Column(children: [
        const Padding(
            padding: EdgeInsets.only(top: 80, right: 180),
            child: Text("Google",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600))),
        const ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage('asstes/img/me.jpg')),
            title: Text('Pansuriya prince'),
            subtitle: Text('Pansuriyaprince00@gmail.com'),
            trailing: Icon(Icons.arrow_forward_ios_rounded)),
        Padding(
          padding: const EdgeInsets.only(right: 90, bottom: 30),
          child: Container(
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.brown[100]),
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Mange your Google account',
                      style: TextStyle(color: Colors.black, fontSize: 20)))),
        ),
        Row(children: const [
          Text('COVID-19 Support',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.brown))
        ]),
        const ListTile(
            title: Text('COVID-19 Exposuer Notifications',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
            subtitle: Text('Off'),
            leading: CircleAvatar(
                backgroundImage: AssetImage('asstes/img/covid.webp'))),
        Row(children: const [
          Text('Services on this device',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.brown))
        ]),
        Common().hosc(titl: 'Ads', stil: ""),
        Common().hosc(titl: 'Autofill', stil: ""),
        Common().hosc(titl: 'Backup', stil: ""),
        Common().hosc(titl: 'Device & sharing', stil: ""),
        Common().hosc(titl: 'Find My Device', stil: ""),
        Common().hosc(titl: 'Mobile data & messaging', stil: ""),
        Common().hosc(titl: 'Perntal controls', stil: ""),
        Common().hosc(titl: 'Personal Safty', stil: ""),
        Common().hosc(titl: 'Personalize using share date', stil: ""),
        Common().hosc(titl: 'Set up & restore', stil: ""),
        Common().hosc(titl: 'Settings for Google apps', stil: ""),
        const Padding(
            padding: EdgeInsets.only(right: 300),
            child: Text('Developer',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Colors.brown))),
        Common().hosc(titl: 'Firebase App indexing', stil: '')
      ])),
    );
  }
}
