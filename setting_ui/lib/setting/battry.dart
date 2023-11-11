import 'package:flutter/material.dart';
import 'package:setting_ui/allwidget.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class Battry extends StatefulWidget {
  const Battry({Key? key}) : super(key: key);

  @override
  State<Battry> createState() => _BattryState();
}

class _BattryState extends State<Battry> {
  int controller = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Battery')),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 50,
          width: 380,
          child: Card(
            color: Colors.black.withOpacity(0.2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: ListTile(
              leading: Icon(Icons.do_disturb_sharp),
              title: Text('5 recommended optimization',
                  style: TextStyle(color: Colors.black54)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        SizedBox(
          height: 140,
          width: 360,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.green,
            child: Column(children: const [
              Padding(
                  padding: EdgeInsets.only(left: 250, bottom: 20, top: 20),
                  child: Text('100%',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w400))),
              Padding(
                padding: EdgeInsets.only(left: 250, bottom: 10),
                child: Text('Charging',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
            ]),
          ),
        ),
        Common().hosc(
            titl: 'Power saving mode', stil: """Can last about 1 d 13h 37 min 
off"""),
        Common().hosc(titl: "Advanced settings", stil: ''),
        Common().space(thickness: 0, indent: 0, endIndent: 0),
        Common().hosc(titl: '', stil: "Battry using  (last 24 hours)"),
        SizedBox(
            width: 550,
            height: 250,
            child: Sparkline(
                gridLineAmount: 2,
                data: const [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100],
                lineColor: Colors.lightGreen[500]!,
                pointsMode: PointsMode.all,
                pointSize: 5.0,
                pointColor: Colors.black,
                enableGridLines: true,
                averageLine: true,
                averageLabel: true,
                thresholdSize: 0.1)),
        Row(children: const [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.green, radius: 5)),
          Text('Normally'),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent, radius: 5)),
          Text('High use')
        ]),
        ListTile(
            leading: Text('Battry Usage'),
            trailing: Wrap(spacing: 12, children: [
              Text('''BATTREY 
USING'''),
              Icon(Icons.arrow_drop_down_sharp)
            ])),
        Bat().power(imge: "asstes/img/wats.jpg", tit: "WhatsApp", sub: "7.32%"),
        Bat().power(imge: "asstes/img/ins.jpg", tit: "Instagram", sub: "2.09%"),
        Bat().power(imge: "asstes/img/yt.jpg", tit: "YouTube", sub: "0.87%%"),
      ])),
    );
  }
}
