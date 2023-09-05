import 'package:flutter/material.dart';
import 'package:vip_signal_app/forgetpass_screen.dart';
import 'package:vip_signal_app/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  navigatorTo(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'VIP سیگنال',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.login_outlined,
                  ),
                ],
              ),
              Image(
                image: AssetImage('images/w.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigatorTo(context, LoginScreen());
                },
                child: Text(
                  'ورود',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  elevation: 10.0,
                  backgroundColor: Colors.white,
                  minimumSize: Size(200.0, 50.0),
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ثبت نام',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 10.0,
                  backgroundColor: Colors.black,
                  side: BorderSide(
                    color: Colors.white,
                  ),
                  minimumSize: Size(200.0, 50.0),
                ),
              ),
              TextButton(
                onPressed: () {
                  navigatorTo(context, ForgetPassScreen());
                },
                child: Text(
                  'بازیابی رمز عبور',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
