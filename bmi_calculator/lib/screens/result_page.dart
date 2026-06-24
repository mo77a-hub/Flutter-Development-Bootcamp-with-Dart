import 'package:flutter/material.dart';
import '../components/reusable_Card.dart';
import '../constants.dart';
import '../components/buttomButton.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.result,
    required this.bmi,
    required this.advise,
  });

  final String result;
  final String bmi;
  final String advise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('bmi calculator')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Center(
                child: Text('YOUR RESULT', style: kLabelTextStyleYellow),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(result, style: kResultTextStyle),
                  Text(bmi, style: kResulTextNumberStyle),
                  Text(advise, style: kResulTextAdviseStyle),
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pushNamed(context, '/hi');
            },
          ),
        ],
      ),
    );
  }
}
