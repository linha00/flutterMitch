// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mitch_koko_flutter/pages/firstPage.dart';
import 'package:mitch_koko_flutter/pages/secondPage.dart';

void main() {
  runApp(MyApp());
}

// stateless widget base app
class MyApp extends StatelessWidget {
  // constructor
  MyApp({super.key});

  // variables
  String name = "Kamil";

  // list: ordered collections of elements, can have duplicates
  List number = [1, 2, 3, 4, 5];
  List<String> names = ["Kamil", "Ahmet", "Mehmet", "Ali", "Veli"];

  // set: unordered collections of unqiue elements
  Set unqiue = {"Kamil", "Ahmet", "Mehmet", "Ali", "Veli"};

  // map: key-value pairs
  Map<String, String> user = {
    "name": "Kamil",
    "surname": "Yilmaz",
    "age": "25",
  };
  Map user2 = {
    "name": "Kamil",
    "surname": "Yilmaz",
    "age": "25",
  };

  //function / method
  void changeName(String inputName) {
    name = inputName;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
      routes: {
        '/firstPage': (context) => Firstpage(),
        '/secondPage': (context) => Secondpage(),
      },
    );
  }
}
