// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mitch_koko_flutter/pages/HomePage.dart';
import 'package:mitch_koko_flutter/pages/Profile.dart';
import 'package:mitch_koko_flutter/pages/Settings.dart';
import 'package:mitch_koko_flutter/pages/firstPage.dart';
import 'package:mitch_koko_flutter/pages/toDoList/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // constructor
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TDHomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
      routes: {
        '/HomePage': (context) => HomePage(),
        '/Profile': (context) => Profile(),
        '/Settings': (context) => Settings(),
        '/todoHomePage': (context) => TDHomePage(),
      },
    );
  }
}
