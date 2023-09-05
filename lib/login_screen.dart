import 'package:flutter/material.dart';
import 'package:vip_signal_app/custom_widget/post_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'VIP سیگنال',
          style: TextStyle(
            letterSpacing: 3.0,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: _getBody(context),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getBlogPost(
                imageName: 'a',
                coinName: 'Alchemy Pay',
                buy: 15,
                sell: 18,
              ),
              getBlogPost(
                imageName: 'c',
                coinName: 'Cosmos',
                buy: 1,
                sell: 9,
              ),
              getBlogPost(
                imageName: 'r',
                coinName: 'Ripple',
                buy: 10,
                sell: 16,
              ),
              getBlogPost(
                imageName: 's',
                coinName: 'Safe Moon',
                buy: 5,
                sell: 18,
              ),
              SizedBox(height: 20.0),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'خروج از حساب',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
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
