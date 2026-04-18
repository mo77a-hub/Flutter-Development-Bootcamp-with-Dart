import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: Color(0xFF141E28),
          backgroundColor: Color(0xFFE0DFAB),
        ),
        scaffoldBackgroundColor: Color(0xFF141E28),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF141E28),
          foregroundColor: Color(0xFFE0DFAB),
        ),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Color(0xFFE0DFAB))),
      ),
      home: InputPage(),
    );
  }
}
