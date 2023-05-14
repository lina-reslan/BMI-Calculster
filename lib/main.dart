import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() {
  runApp(const BMICalculater());
}

class BMICalculater extends StatelessWidget {
  const BMICalculater({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:const Color(0XFF0A0E21),
      ),
      home: const InputPage(),
    );
  }
}


