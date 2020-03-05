import 'package:flutter/material.dart';
import 'package:todo_App/task_screen/task_tile.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: <Widget>[
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}