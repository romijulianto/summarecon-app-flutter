import 'package:flutter/material.dart';
import 'dart:async';
// ignore_for_file: prefer_const_constructors

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/sign-in');
    });
    super.initState();
  }

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
