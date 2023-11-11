import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';

class notibar extends StatefulWidget {
  @override
  State<notibar> createState() => _notibarState();
}

class _notibarState extends State<notibar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications & Status bar'),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Common().hosc(titl: "", stil: "BY LOCATION"),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 250,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('asstes/img/lck.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('asstes/img/ban.jpg'),
                    fit: BoxFit.cover)),
          )
        ]),
        Common().hosc(titl: 'Badge', stil: "Number"),
        Common().hosc(titl: 'Status bar', stil: ''),
        Common().space(thickness: 1.05, indent: 20, endIndent: 20),
        Common().hosc(titl: 'More settings', stil: ""),
        Common().space(thickness: 1.05, indent: 20, endIndent: 20),
        ListTile(
          leading: Text('APP NOTIFICATION'),
          trailing: Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down_outlined, color: Colors.grey),
              label: Text('RECENT', style: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        Normally().adlis(
            tlt: "Instagram",
            txt: "2 hour ago",
            icdata: Icons.toggle_off_rounded,
            img: "asstes/img/ins.jpg"),
        Normally().adlis(
            tlt: "Whatsapp",
            txt: "5 min ago",
            icdata: Icons.toggle_off_rounded,
            img: "asstes/img/wats.jpg"),
        Normally().adlis(
            tlt: "You tube",
            txt: "15 min ago",
            icdata: Icons.toggle_off_rounded,
            img: "asstes/img/yt.jpg"),
      ])),
    );
  }
}
