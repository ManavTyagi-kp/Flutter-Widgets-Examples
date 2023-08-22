import 'package:flutter/material.dart';

enum Calendar { day, week, month, year }

class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  Calendar calendarView = Calendar.day;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Center(
          child: Column(
            children: [
              FloatingActionButton(
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      'Floating Action Button',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Elevated')),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: () {}, child: Text('Text Button')),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                onPressed: () {},
                child: Text('Filled Button'),
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton.tonal(
                onPressed: () {},
                child: Text('Tonal Filled Button'),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
              const SizedBox(
                height: 20,
              ),
              SegmentedButton<Calendar>(
                segments: const <ButtonSegment<Calendar>>[
                  ButtonSegment<Calendar>(
                      value: Calendar.day,
                      label: Text('Day'),
                      icon: Icon(Icons.calendar_view_day)),
                  ButtonSegment<Calendar>(
                      value: Calendar.week,
                      label: Text('Week'),
                      icon: Icon(Icons.calendar_view_week)),
                  ButtonSegment<Calendar>(
                      value: Calendar.month,
                      label: Text('Month'),
                      icon: Icon(Icons.calendar_view_month)),
                  ButtonSegment<Calendar>(
                      value: Calendar.year,
                      label: Text('Year'),
                      icon: Icon(Icons.calendar_today)),
                ],
                selected: <Calendar>{calendarView},
                onSelectionChanged: (Set<Calendar> newSelection) {
                  setState(() {
                    calendarView = newSelection.first;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                label: const Text('Extended FAB'),
                icon: const Icon(Icons.copy),
              )
            ],
          ),
        ),
      ),
    );
  }
}
