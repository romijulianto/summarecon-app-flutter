import 'package:flutter/material.dart';
import 'package:summareconapps/ui/pages/sign_in_screen.dart';
import 'package:summareconapps/ui/pages/splash_screen.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(SummareconApps());
}

class SummareconApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/sign-in': (context) => SignIn(),
      },
    );
  }
}
