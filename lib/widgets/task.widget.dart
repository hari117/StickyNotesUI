import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  String taskName;

  TaskWidget(this.taskName);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 5),
              offset: const Offset(0, 3.0),
              blurRadius: 4.0,
              spreadRadius: 0.0,
            ),
          ]),
      child: Row(
        children: [
          Checkbox(
            onChanged: (value) {},
            activeColor: Color.fromRGBO(153, 153, 153, 100),
            //tristate: false,
            value: false,
          ),
          Flexible(
              fit: FlexFit.loose,
              child: Text(
            taskName,
            style: TextStyle(
                fontWeight: FontWeight.w500, letterSpacing: 1.0, fontSize: 16),
            overflow: TextOverflow.fade,
          )),
        ],
      ),
    );
  }
}
