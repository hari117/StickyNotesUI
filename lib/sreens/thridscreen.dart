import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stickynotes/helpers/apptheam.dart';
import 'package:stickynotes/sreens/fourthscreen.dart';
import 'package:stickynotes/widgets/appbar.widget.dart';
import 'package:stickynotes/widgets/floatingpoint.widget.dart';
import 'package:stickynotes/widgets/notesview.widget.dart';
import 'package:stickynotes/widgets/searchbox.widget.dart';

class NotesViewer extends StatelessWidget {
  List<String> date = ["Agust 2020", "Septembar 2020", "December 2019"];
  List<String> topics = ["Ux Basics", "Summer fun", "Home"];
  List<String> desciption = [
    "user experince(UX) focuses on having a beep understabding of users,what of users,what they ned,what they value ,their abilities ,and also there...",
    "without a doubt,summer is the most anticip-ated season of the year,and wheather or not its your favorite.",
    "A home,or domicile,is a living space used as a permanent or semi pernanent residence for an individual"
  ];



  @override
  Widget build(BuildContext context) {
    screenOverlay(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotepadWriter()));
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
  screenOverlay(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
        builder: (context) {
          return Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 500,
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 200),
                      offset: const Offset(0, 200),
                      blurRadius: 4.0,
                      spreadRadius: MediaQuery.of(context).size.height,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Notes",
                                    style: GoogleFonts.anton(
                                        color: $apptheam.brandColor,
                                        fontSize: 18,
                                        letterSpacing: 1.3,
                                        decoration: TextDecoration.none),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: $apptheam.brandColor,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Tasks",
                                    style: GoogleFonts.anton(
                                        color: Colors.black,
                                        fontSize: 18,
                                        letterSpacing: 1.3,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: $apptheam.brandColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "All notes",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                color: $apptheam.brandColor,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: Text(
                            "3",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 27),
                          child: Text(
                            "Trash",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: Text(
                            "0",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: 30),
                          width: 222,
                          height: 30,
                          alignment: Alignment.center,
                          child: Text(
                            "New Folder",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: $apptheam.brandColor,
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(3, 210, 89, 200),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        opaque: false);
    overlayState.insert(overlayEntry);
    await Future.delayed(Duration(seconds: 4));
    overlayEntry.remove();
  }
}
