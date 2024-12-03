import 'package:flutter/material.dart';
import 'package:flutter_calendar_scheduler/components/main_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [MainCalendar()],
        ),
      ),
    );
  }
}