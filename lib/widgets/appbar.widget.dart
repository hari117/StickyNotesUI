import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stickynotes/helpers/apptheam.dart';


class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: double.infinity,

      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
              child: Container(
                height: 100,
              )),
          Row(
            children: [
              Text("Notes",style:GoogleFonts.anton(color:$apptheam.brandColor,fontSize: 18,letterSpacing: 1.3),),
              Icon(Icons.arrow_drop_down,color:$apptheam.brandColor ,size: 18,),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text("Tasks",style:GoogleFonts.anton(color:Colors.black,fontSize: 18,letterSpacing: 1.3),),

          Expanded(
              child: Container(
                height: 100,
              )),
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
