
import 'package:flutter/material.dart';
import '../constants.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    required this.onPress,
    required this.text,
    super.key,
  });
  final void Function()? onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child:  Text(
              text,
              style: kLargeButtonTextStyle,
            )),
      ),
    );
  }
}