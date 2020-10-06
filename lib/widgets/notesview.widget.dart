import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stickynotes/helpers/apptheam.dart';

class NotesView extends StatelessWidget {
  String date;
  String workTopic;
  String workDesciption;

  NotesView(this.date, this.workTopic, this.workDesciption);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 140,
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(20),
          boxShadow: [

            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 5),
              offset: const Offset(0, 4.0),
              blurRadius: 4.0,
              spreadRadius: 0.0,
            ),
          ]
      ),
      width:double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date,style:GoogleFonts.anton(color:$apptheam.brandColor,fontSize: 12,letterSpacing: 1.3),),
            SizedBox(
              height: 10,
            ),
            Text(workTopic,style:GoogleFonts.roboto(color:$apptheam.onSurfaceCololor_01,fontSize: 15,fontWeight: FontWeight.w700),),
            SizedBox(
              height: 5,
            ),
            Text(workDesciption,maxLines: 3 ,style:GoogleFonts.roboto(color:$apptheam.onSurfaceCololor_02,fontSize: 15,),)
          ],
        ),
      ),
    );
  }
}
