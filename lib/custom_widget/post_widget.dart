import 'package:flutter/material.dart';

Widget getBlogPost(
    {required String imageName,
    required String coinName,
    required int buy,
    required int sell}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('images/$imageName.png'),
        ),
      ),
      SizedBox(height: 5.0),
      Text(
        '$coinName سیگنال خرید',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      SizedBox(height: 10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.attach_money_outlined,
            color: Colors.green,
          ),
          SizedBox(width: 10.0),
          Text(
            'خرید روی $buy دلار',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(width: 50.0),
          Icon(
            Icons.sell_outlined,
            color: Colors.red,
          ),
          SizedBox(width: 10.0),
          Text(
            'فروش روی $sell دلار',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
      Container(
        width: 200.0,
        child: Divider(
          color: Colors.black,
          thickness: 1.0,
        ),
      ),
    ],
  );
}
