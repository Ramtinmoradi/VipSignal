import 'package:flutter/material.dart';
import 'package:vip_signal_app/welcome_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
