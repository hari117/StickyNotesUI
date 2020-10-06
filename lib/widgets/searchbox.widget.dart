import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(237,237, 237,100),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        maxLines: 1,
        decoration: InputDecoration(

          border: InputBorder.none,
          prefixIcon: Icon(Icons.search,color: Color.fromRGBO(142, 142, 142,100),),
          hintText: "Search Notes",
          hintStyle:TextStyle(fontSize: 20.0, color: Color.fromRGBO(142, 142, 142, 100)),
        ),
      ),
    );
  }
}
