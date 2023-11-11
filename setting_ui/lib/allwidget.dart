import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';

class Common {
  Widget carder(
      {required String title, required String sulti, required IconData ivc}) {
    return SizedBox(
      height: 100,
      width: 350,
      child: Card(
          color: Colors.black.withOpacity(0.080),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          child: ListTile(
              title: Text(title), subtitle: Text(sulti), trailing: Icon(ivc))),
    );
  }

  Widget list({
    required String txt,
    required IconData icon,
    required VoidCallback tap,
    Widget? child,
  }) {
    return ListTile(
      onTap: tap,
      leading: CircleAvatar(
        child: Icon(icon),
      ),
      trailing: child,
      title: Text(txt),
    );
  }

  Widget themedatakam({
    required String txt,
    required IconData icon,
    required String subt,
  }) {
    return ListTile(
      leading: CircleAvatar(child: Icon(icon)),
      title: Text(txt),
      subtitle: Text(subt),
    );
  }

  Widget hosc({
    required String titl,
    required String stil,
  }) {
    return ListTile(
      title: Text(titl,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
      subtitle: Text(stil, style: const TextStyle(fontWeight: FontWeight.w500)),
    );
  }

  Widget avaj({
    required IconData led,
    required String text,
  }) {
    return Column(
      children: [
        ListTile(
            leading: Icon(led),
            title: Text(text, style: TextStyle(color: Colors.grey[500])),
            subtitle: BalloonSlider(
                value: 0.5,
                ropeLength: 50,
                onChanged: (val) {},
                color: Colors.indigo)),
      ],
    );
  }

  Widget goole({required var images, required String txt}) {
    return ListTile(
        title: Text(txt),
        leading: CircleAvatar(backgroundImage: AssetImage(images)));
  }

  Widget space({
    required double? thickness,
    required double? indent,
    required double? endIndent,
  }) {
    return const Divider(endIndent: 20, indent: 20, thickness: 1.5);
  }

  Widget lock({
    required IconData ic,
    required String tt,
    required String txts,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 10),
      CircleAvatar(
        child: Icon(ic, size: 30, color: Colors.black),
      ),
      const SizedBox(height: 20),
      Text(
        tt,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      Text(txts,
          style: const TextStyle(
              color: Colors.black45, fontSize: 12, fontWeight: FontWeight.w600))
    ]);
  }
}

class Normally {
  Widget adlis(
      {required String tlt,
      required String txt,
      required IconData icdata,
      required var img}) {
    return ListTile(
        title: Text(tlt),
        subtitle: Text(txt),
        leading: CircleAvatar(backgroundImage: AssetImage(img)),
        trailing: Icon(icdata, size: 50));
  }
}

class Bat {
  Widget power({required var imge, required String tit, required String sub}) {
    return ListTile(
        title: Text(tit),
        subtitle: Text(sub),
        leading: CircleAvatar(backgroundImage: AssetImage(imge)));
  }

  Widget abt({
    required IconData ico,
    required String titl,
    required String tir,
  }) {
    return SizedBox(
      height: 150,
      width: 180,
      child: Card(
          color: Colors.blueGrey[100],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(child: Icon(ico), radius: 20),
                  Text(titl, style: const TextStyle(fontSize: 25)),
                  Text(tir,
                      style: const TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w400)),
                ]),
          )),
    );
  }

  Widget writ({required String titl, required String tral}) {
    return ListTile(
      leading: Text(titl,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      trailing: Text(tral,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
    );
  }
}

class cade {
  Widget carder(
      {required IconData ic, required String txt, required String sutx}) {
    return SizedBox(
      height: 90,
      width: 380,
      child: Card(
          color: Colors.blueAccent.withOpacity(0.065),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
              leading: CircleAvatar(child: Icon(ic)),
              title: Text(txt),
              subtitle: Text(sutx))),
    );
  }

  Widget tile({required String tit}) {
    return ListTile(title: Text(tit));
  }

  Widget digi({
    required String tit,
    required String sut,
  }) {
    return ListTile(
        title: Text(tit,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
        subtitle: Text(sut,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)));
  }

  Widget user(
      {required String photo1, required IconData ioc, required String til}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(photo1),
      ),
      title: Text(til),
      trailing: Icon(ioc),
    );
  }
}
