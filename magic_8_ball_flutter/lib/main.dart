import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal[100],
              letterSpacing: 1,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: luckyball(),
    ),
  ),
);

class luckyball extends StatefulWidget {
  const luckyball({super.key});
  @override
  State<luckyball> createState() => _luckyballState();
}

class _luckyballState extends State<luckyball> {
  int ResponseNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ResponseNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ResponseNumber.png'),
      ),
    );
  }
}
