import 'package:animatedapp/homepage.dart';
import 'package:animatedapp/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {'/splash': (context) => Splashscreen()},
    debugShowCheckedModeBanner: false,
    home: const Homepage(),
  ));
}
