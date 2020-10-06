import 'package:flutter/material.dart';
import 'package:stickynotes/sreens/thridscreen.dart';
import 'package:stickynotes/widgets/appbar.widget.dart';
import 'package:stickynotes/widgets/floatingpoint.widget.dart';
import 'package:stickynotes/widgets/searchbox.widget.dart';
import 'package:stickynotes/widgets/task.widget.dart';


class TasksPage extends StatelessWidget {
  List<String> tasksList = [
    "Welcome to taks!",
    "Here your can add text and voice tasks",
    "edit a text task,simply top it",
    "dont forget to create a home screen shortcut for tasks",
    "Stay on top of your game and necer miss anything important",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotesViewer()));
        },
        child: SafeArea(
          child: Column(
            children: [
              Appbar(),
              SearchBox(),
              Expanded(
                child: listOfTasks(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingPointWidget(),
    );
  }

  listOfTasks() {
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          print(tasksList[index]);
          return TaskWidget(tasksList[index]);
        });
  }
}
