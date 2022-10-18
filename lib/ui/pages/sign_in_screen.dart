import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../shared/theme.dart';
// ignore_for_file: prefer_const_constructors

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget Input Section SignIn
    Widget inputSection() {
      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: GoogleFonts.inriaSerif(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: GoogleFonts.inriaSerif(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget loginButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
            ),
            child: Text(
              'Login',
              style: GoogleFonts.inriaSerif(
                color: Colors.white,
                fontSize: 20.33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }

      Widget forgotPassword() {
        return Container(
          margin: EdgeInsets.only(
            top: 5,
            bottom: 5,
          ),
          child: Column(
            children: [
              Text(
                'Forgot your password?',
                textAlign: TextAlign.left,
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 16.94,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Don’t have an account?',
                textAlign: TextAlign.left,
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 16.94,
                ),
              ),
            ],
          ),
        );
      }

      Widget signUpButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
            ),
            child: Text(
              'Sign Up',
              style: GoogleFonts.inriaSerif(
                color: Colors.white,
                fontSize: 20.33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 14),
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(children: [
          emailInput(),
          passwordInput(),
          loginButton(),
          forgotPassword(),
          signUpButton(),
        ]),
      );
    }

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
          ),
          inputSection(),
        ],
      ),
    );
  }
}
