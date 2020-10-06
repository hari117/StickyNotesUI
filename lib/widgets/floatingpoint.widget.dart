import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stickynotes/helpers/apptheam.dart';

class FloatingPointWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: $apptheam.brandColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(3, 210, 89, 40),
                offset: const Offset(-3, 3.0),
                blurRadius: 10.0,
                spreadRadius: 0.0,
              ),
            ]),
        child: Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          child: SvgPicture.asset(
            "assets/svgfiles/plus.svg",
          ),
        ),
      ),
    );
  }
}
