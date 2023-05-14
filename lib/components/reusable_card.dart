import 'package:flutter/material.dart';


class ReusableCad extends StatelessWidget {

  const ReusableCad({required this.onPress,required this.colour,required this.cardChild , super.key});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ,
      child: Container(

        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}