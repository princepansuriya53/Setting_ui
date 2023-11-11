import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Setting apps", home: Homepage());
  }
}
