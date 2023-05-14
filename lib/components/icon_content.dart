
import 'package:flutter/material.dart';
import '../constants.dart';



class IconContent extends StatelessWidget {
  final IconData icon;
  final String lable;
  const IconContent({
    required this.icon,
    required this.lable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}