import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        /* floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: Color(0xFF141E28),
          backgroundColor: Color(0xFFE0DFAB),
        ),*/
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: kBackgroundColor,
          foregroundColor: kAppBarforegroundColor,
        ),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Color(0xFFE0DFAB))),
      ),
      home: InputPage(),
      routes: {'/hi': (context) => InputPage()},
    );
  }
}
