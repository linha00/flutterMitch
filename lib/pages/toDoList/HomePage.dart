// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mitch_koko_flutter/util/dialog_box.dart';
import 'package:mitch_koko_flutter/util/todo_tile.dart';

class TDHomePage extends StatefulWidget {
  const TDHomePage({super.key});

  @override
  State<TDHomePage> createState() => _TDHomePageState();
}

class _TDHomePageState extends State<TDHomePage> {
  List toDoList = [
    ["Buy milk", false],
    ["Buy bread", false],
    ["Buy eggs", false]
  ];

  final _textController = TextEditingController();

  void saveNewTask() {
    setState(() {
      toDoList.add([_textController.text, false]);
      Navigator.of(context).pop();
    });
    _textController.clear();
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _textController,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text("To Do App"),
        backgroundColor: Colors.yellow[400],
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) {
              setState(() {
                toDoList[index][1] = value;
              });
            },
            deleteFunction: (context) => deleteTask,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
    );
  }
}
