import 'package:flutter/material.dart';
import 'package:todo_App/task_screen/add_task_screen.dart';
import 'package:todo_App/task_screen/task_list.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder:(context)=>AddTaskScreen(),);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30, right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  "ToDo",
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "12 Tasks",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],

            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),),
                color: Colors.white,
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}




