import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 74,
          left: 40,
        ),
        width: 12,
        height: 18,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/ic_vector_back.png',
            ),
          ),
        ),
      );
    }

    Widget textSignUp() {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                'SIGN UP',
                textAlign: TextAlign.left,
                style: GoogleFonts.inriaSerif(
                  color: Colors.orangeAccent,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
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
                  hintText: 'Enter your name',
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

      Widget signUpButton() {
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

      Widget alreadyAccount() {
        return Container(
          margin: EdgeInsets.only(
            top: 20,
            bottom: 5,
          ),
          child: Column(
            children: [
              Text(
                'Already have account?',
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

      Widget loginButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
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
          nameInput(),
          emailInput(),
          passwordInput(),
          signUpButton(),
          alreadyAccount(),
          loginButton(),
        ]),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backButton(),
            Padding(
              padding: const EdgeInsets.only(
                top: 44,
                left: 40,
              ),
              child: Text(
                'WELCOME!',
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            textSignUp(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
