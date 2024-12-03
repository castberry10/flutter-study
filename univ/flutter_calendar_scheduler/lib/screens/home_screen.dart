import 'package:flutter/material.dart';
import 'package:flutter_calendar_scheduler/components/main_calendar.dart';
import 'package:flutter_calendar_scheduler/components/schedule_card.dart';
import 'package:flutter_calendar_scheduler/components/today_banner.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(
              selectedDate: selectedDate,
              onDaySelected: onDaySelected,
            ),
            const SizedBox(
              height: 0,
            ),
            TodayBanner(
              selectedDate: selectedDate,
              count: 0,
            ),
          ],
        ),
      ),
    );
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      selectedDate = selectedDay;
    });
  }
}
