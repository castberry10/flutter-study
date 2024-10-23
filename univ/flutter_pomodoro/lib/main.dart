import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/screens/home_screen.dart';

void main() {
  runApp(const Pomodoro());
}

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xffe7626c),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xff232b55),
          ),
        ),
        cardColor: const Color(0xfff3eddb),
      ),
      home: HomeScreen(),
    );
  }
}
