import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.awesome_icon, required this.label});

  final FaIconData awesome_icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(awesome_icon, size: 80.0),
        SizedBox(height: 15.0),
        Text(label, style: kLabelTextStyleWhite),
      ],
    );
  }
}
