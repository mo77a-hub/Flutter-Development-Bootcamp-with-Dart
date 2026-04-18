import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 5.0;
const activeContainerColor = Color(0xFF1F323A);
const bottomContainerColor = Color(0xFFDDE2A8);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeContainerColor,
                    cardChild: Column(
                      children: <Widget>[Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
                Expanded(child: ReusableCard(colour: activeContainerColor)),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: activeContainerColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: activeContainerColor)),
                Expanded(child: ReusableCard(colour: activeContainerColor)),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
