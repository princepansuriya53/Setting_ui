import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:setting_ui/setting/Syset.dart';
import 'package:setting_ui/setting/Abdevi.dart';
import 'package:setting_ui/setting/Apps.dart';
import 'package:setting_ui/setting/Connection.dart';
import 'package:setting_ui/setting/Diweb.dart';
import 'package:setting_ui/setting/Notibar.dart';
import 'package:setting_ui/setting/Privacy.dart';
import 'package:setting_ui/setting/Soundvib.dart';
import 'package:setting_ui/setting/Tiptip.dart';
import 'package:setting_ui/setting/battry.dart';
import 'package:setting_ui/setting/bluetooth.dart';
import 'package:setting_ui/setting/diplay.dart';
import 'package:setting_ui/setting/google.dart';
import 'package:setting_ui/setting/homescrenlock.dart';
import 'package:setting_ui/setting/location.dart';
import 'package:setting_ui/setting/mobilenetwork.dart';
import 'package:setting_ui/setting/password&security.dart';
import 'package:setting_ui/setting/personl.dart';
import 'package:setting_ui/setting/safteyandemrgency.dart';
import 'package:setting_ui/setting/spfetuer.dart';
import 'package:setting_ui/setting/user&account.dart';
import 'package:setting_ui/setting/wifi.dart';
import 'allwidget.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: SingleChildScrollView(
            child: Column(children: [
          SearchBarAnimation(
              durationInMilliSeconds: 1000,
              hintText: "Enter the Search Text",
              enableButtonBorder: true,
              textEditingController: TextEditingController(),
              isOriginalAnimation: true,
              buttonBorderColour: Colors.white,
              trailingWidget: const Icon(Icons.search_sharp),
              secondaryButtonWidget: const Icon(Icons.search),
              buttonWidget: const Icon(Icons.search),
              onFieldSubmitted: () {}),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('asstes/img/me.jpg'),
            ),
            title: Text(
              "Patel Prince_30",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '''Link device in My Devices get special Red Cableclub Perks''',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const Divider(
              thickness: 1, indent: 30, endIndent: 30, color: Colors.grey),
          Common().list(
              txt: "Wi-Fi",
              icon: Icons.wifi,
              tap: () => newpage(context, Wifie())),
          Common().list(
            txt: "Mobile Network",
            icon: Icons.mobile_screen_share_rounded,
            tap: () => newpage(context, modata()),
          ),
          Common().list(
            txt: "Bluetooth",
            icon: Icons.bluetooth,
            tap: () => newpage(context, bluto()),
          ),
          Common().list(
              tap: () => newpage(context, connctshare()),
              txt: "Connnecting & Sharing",
              icon: Icons.data_saver_on_outlined),
          const Divider(
              thickness: 1, indent: 30, endIndent: 30, color: Colors.grey),
          Common().list(
              txt: "Personalization",
              icon: Icons.format_paint_outlined,
              tap: () => newpage(context, personal())),
          Common().list(
            txt: "Home Screen & Lock Screen",
            icon: Icons.photo_size_select_actual,
            tap: () => newpage(context, Homescreen()),
          ),
          Common().list(
              txt: "Display & brightness",
              icon: Icons.light_mode_sharp,
              tap: () => newpage(context, Display())),
          Common().list(
              txt: "Sound & vibration",
              icon: Icons.volume_up_outlined,
              tap: () => newpage(context, sounvibe())),
          Common().list(
              txt: "Notification & Statusbar",
              icon: Icons.notification_add_sharp,
              tap: () => newpage(context, notibar())),
          const Divider(
              thickness: 1, indent: 30, endIndent: 30, color: Colors.grey),
          Common().list(
              txt: "Password & Security",
              icon: Icons.lock,
              tap: () => newpage(context, Passeurity())),
          Common().list(
              txt: "Privacy",
              icon: Icons.security_rounded,
              tap: () => newpage(context, pri())),
          Common().list(
              txt: "Saftey & security",
              icon: Icons.ac_unit_rounded,
              tap: () => newpage(context, Saftey())),
          Common().list(
            txt: "Battry",
            icon: Icons.battery_full,
            tap: () => newpage(context, Battry()),
          ),
          Common().list(
              txt: "Apps",
              icon: Icons.app_settings_alt,
              tap: () => newpage(context, Appses())),
          Common().list(
              txt: "Location",
              icon: Icons.gps_fixed_rounded,
              tap: () => newpage(context, jagya())),
          const Divider(
              thickness: 1, indent: 30, endIndent: 30, color: Colors.grey),
          Common().list(
            txt: "Special features",
            icon: Icons.stars_sharp,
            tap: () => newpage(context, specialfe()),
          ),
          Common().list(
              txt: "Digital Wellbeing & Parent Controls",
              icon: Icons.task_alt,
              tap: () => newpage(context, digiweb())),
          const Divider(
              thickness: 1, indent: 30, endIndent: 30, color: Colors.grey),
          Common().list(
              txt: "System settings",
              icon: Icons.more_vert_outlined,
              tap: () => newpage(context, seyset())),
          Common().list(
              txt: "About device",
              icon: Icons.error_outline_rounded,
              tap: () => newpage(context, about())),
          Common().list(
              txt: "User & account",
              icon: Icons.person_pin,
              tap: () => newpage(context, useraa())),
          Common().list(
              txt: "Google",
              icon: Icons.g_mobiledata_rounded,
              tap: () => newpage(context, goo())),
          Common().list(
              txt: "Tips & Support",
              icon: Icons.question_answer,
              tap: () => newpage(context, tips())),
        ])));
  }

  Future<void> newpage(context, page) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
