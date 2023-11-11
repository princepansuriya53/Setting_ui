import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class personal extends StatefulWidget {
  @override
  State<personal> createState() => _personalState();
}

class _personalState extends State<personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personalization'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(children: [
                    Container(
                      height: 400,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('asstes/img/Wallpaper.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 350, left: 53),
                      child: Text(
                        'Wallpaper',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Stack(children: [
                    Container(
                      height: 400,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('asstes/img/Dark mode.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 350, left: 20),
                      child: Text(
                        'Always-On Display',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(children: [
                    Container(
                      height: 230,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('asstes/img/them.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ]),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Stack(children: [
                    Container(
                      height: 230,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('asstes/img/icon.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ]),
                ),
              ],
            ), // All Image Container Complet
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 15,
              ),
              child: Text(
                "USER INTERFACE",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Common().themedatakam(
                txt: "Quick", icon: Icons.settings_outlined, subt: "square"),
            Common().themedatakam(
                txt: "Color", icon: Icons.color_lens, subt: "Custom"),
            Common().themedatakam(
                txt: "Font&display size",
                icon: Icons.text_fields,
                subt: '''FONT:Oneplus Sans, Small; Display:Defualt'''),
            Common().themedatakam(
                txt: "Fingerprint animation",
                icon: Icons.fingerprint_rounded,
                subt: "Worhole"),
            Common().themedatakam(
                txt: "Color", icon: Icons.color_lens, subt: "Custom"),
            Common().themedatakam(
                txt: "Horizon light",
                icon: Icons.lightbulb_rounded,
                subt: "Blue")
          ],
        ),
      ),
    );
  }
}
