import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:setting_ui/allwidget.dart';

class useraa extends StatefulWidget {
  @override
  _useraaState createState() => _useraaState();
}

class _useraaState extends State<useraa> {
  @override
  bool _v = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User & accounts')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Common().hosc(titl: "", stil: "USER"),
            Common().hosc(titl: "Multiple users", stil: ""),
            Common().space(thickness: 0, indent: 0, endIndent: 0),
            Common().hosc(titl: "", stil: "PASSEORD & ACCOUNT"),
            Bat().power(
                imge: "asstes/img/1+7.png", tit: "Oneplus Account", sub: ""),
            Common().space(thickness: 0, indent: 0, endIndent: 0),
            Common().hosc(titl: "", stil: "OTHER ACCOUNTS"),
            ListTileSwitch(
                value: _v,
                onChanged: (value) => setState(() => _v = value),
                title: Text('Automatically sync app data'),
                switchActiveColor: Colors.purple,
                switchInactiveColor: Colors.grey),
            cade().user(
                photo1: "asstes/img/Teleg.png",
                ioc: Icons.arrow_forward_ios_outlined,
                til: "792127077"),
            cade().user(
                photo1: "asstes/img/fb.png",
                ioc: Icons.arrow_forward_ios_outlined,
                til: "Facebook"),
            cade().user(
                photo1: "asstes/img/goog.png",
                ioc: Icons.arrow_forward_ios_outlined,
                til: "Google"),
            cade().user(
                photo1: "asstes/img/true.jpg",
                ioc: Icons.arrow_forward_ios_outlined,
                til: "Truecaller"),
            cade().user(
                photo1: "asstes/img/wps.jpg",
                ioc: Icons.arrow_forward_ios_outlined,
                til: "WPS Office"),
            cade().user(
                photo1: "asstes/img/strbuck.webp",
                ioc: Icons.arrow_forward_ios_outlined,
                til: "Starbucks"),
            cade().user(
                photo1: "asstes/img/wats.jpg",
                ioc: Icons.arrow_forward_ios_outlined,
                til: "Whatsapp"),
            TextButton(onPressed: () {}, child: Text('Add account'))
          ],
        ),
      ),
    );
  }
}
