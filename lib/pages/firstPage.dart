// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'First Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "H O M E",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/firstPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "S E T T I N G S",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/secondPage');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("go to second page"),
          onPressed: () {
            Navigator.pushNamed(context, '/secondPage');
          },
        ),
      ),
    );
  }
}
