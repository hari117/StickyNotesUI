import 'package:flutter/material.dart';
import 'package:stickynotes/helpers/apptheam.dart';
import 'package:stickynotes/sreens/screenone.dart';

class NotepadWriter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: $apptheam.brandColor,
        ),
        actions: [
          Icon(
            Icons.done,
            color: $apptheam.brandColor,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.undo,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotesWidget()));

        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "UX Basics",
                style: TextStyle(
                    color: $apptheam.brandColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "User Experience(UX) focuses on having a deep uderstanding of users what they need,what they value,their abilites and also their limitations,it also takes in to accout the business goals and objectives of the group managing the project.",
                style: TextStyle(
                  color: $apptheam.onSurfaceCololor_02,
                  letterSpacing: 1.5,height: 1.5,
                ),

              ),
              Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.bottomRight,
                child: Text("11 Augest 11.20 AM",style: TextStyle(color:$apptheam.onSurfaceCololor_02,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
