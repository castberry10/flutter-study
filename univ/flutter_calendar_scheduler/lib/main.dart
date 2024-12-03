import 'package:flutter/material.dart';
import 'package:flutter_calendar_scheduler/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
