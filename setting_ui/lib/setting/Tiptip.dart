import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';

class tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Tips & support'), backgroundColor: Colors.black),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('asstes/img/tips.jpg'))),
          ),
          Common().hosc(
              titl: 'Welcome to opne Plus Tips & support',
              stil:
                  '''Undestand and quickly learn about the feature in your one Plus phone and find answers to FAQs.'''),
          Common().carder(
              title: "New features",
              sulti: "What's new with OS12",
              ivc: Icons.add_shopping_cart_sharp),
          Common().carder(
              title: "Gets Stated",
              sulti: "Must-know basic and facts",
              ivc: Icons.star_border_sharp),
          Common().carder(
              title: "Usage Tips",
              sulti: "Step by step gu",
              ivc: Icons.lightbulb_outline),
          Common().carder(
              title: "Common Qustions",
              sulti: "Genral queris and answers",
              ivc: Icons.help_outline_rounded),
        ],
      )),
    );
  }
}
