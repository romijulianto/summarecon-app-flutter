import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summareconapps/shared/theme.dart';
// ignore_for_file: prefer_const_constructors

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/ic_img_login.png',
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38, right: 40),
            child: Text(
              'WELCOME',
              style: GoogleFonts.inriaSerif(
                color: Colors.orangeAccent,
                fontSize: 41.3,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
