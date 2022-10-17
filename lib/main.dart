import 'package:flutter/material.dart';
import 'package:summareconapps/ui/pages/splash_screen.dart';

void main() {
  runApp(SummareconApps());
}

class SummareconApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
