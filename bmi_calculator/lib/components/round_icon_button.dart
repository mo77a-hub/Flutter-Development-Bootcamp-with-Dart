import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFFDDE2A8),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(icon, color: Color(0xFF000000), size: 35.0),
    );
  }
}
