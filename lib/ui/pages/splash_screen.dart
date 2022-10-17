import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          child: Container(
              decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/ic_bg_img.png'),
            fit: BoxFit.fitWidth),
      ))),
      Positioned(
          top: 373,
          left: 100,
          child: Container(
              width: 228,
              height: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_logo_scg.png'),
                    fit: BoxFit.fitWidth),
              ))),
    ]));
  }
}
