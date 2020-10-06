import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stickynotes/sreens/secondscreen.dart';
import 'package:stickynotes/widgets/appbar.widget.dart';
import 'package:stickynotes/widgets/floatingpoint.widget.dart';
import 'package:stickynotes/widgets/searchbox.widget.dart';
import 'package:stickynotes/widgets/notesview.widget.dart';

class NotesWidget extends StatefulWidget {
  @override
  _NotesWidgetState createState() => _NotesWidgetState();
}

class _NotesWidgetState extends State<NotesWidget> {
  List<String> date = ["Agust 2020", "Septembar 2020", "December 2019"];

  List<String> topics = ["Ux Basics", "Summer fun", "Home"];

  List<String> desciption = [
    "user experince(UX) focuses on having a beep understabding of users,what of users,what they ned,what they value ,their abilities ,and also there...",
    "without a doubt,summer is the most anticip-ated season of the year,and wheather or not its your favorite.",
    "A home,or domicile,is a living space used as a permanent or semi pernanent residence for an individual"
  ];

  @override
  void initState() {
    // TODO: implement initState
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => TasksPage()));
        },
        child: SafeArea(
          child: Column(
            children: [
              Appbar(),
              SearchBox(),
              Expanded(
                child: ListView.builder(
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    return SafeArea(
                      child: NotesView(
                          date[index], topics[index], desciption[index]),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingPointWidget(),
    );
  }
}
