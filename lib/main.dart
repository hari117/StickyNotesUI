import 'package:flutter/material.dart';
import 'package:stickynotes/sreens/fourthscreen.dart';
import 'package:stickynotes/sreens/screenone.dart';
import 'package:stickynotes/sreens/secondscreen.dart';
import 'package:stickynotes/sreens/thridscreen.dart';

import 'widgets/searchbox.widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        home: NotesWidget()
      ),
    );
  }
}
