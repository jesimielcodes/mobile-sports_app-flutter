import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late final Map<DateTime, List> events;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  void initState() {
    super.initState();
    events = {
      DateTime(2025, 11, 2): ['Swishes vs Northside (Football)'],
      DateTime(2025, 11, 5): ['Hawks vs Tigers (Volleyball)'],
      DateTime(2025, 10, 20): ['Hawks 2 - 1 Tigers (Volleyball)'],
      DateTime(2025, 10, 22): ['Swishes 3 - 3 Northside (Football)'],
    };
  }

  List _getEventsForDay(DateTime day) {
    return events[DateTime(day.year, day.month, day.day)] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Calendar'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: focusedDay,
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            selectedDayPredicate: (day) => isSameDay(selectedDay, day),
            eventLoader: _getEventsForDay,
            calendarStyle: const CalendarStyle(
              markerDecoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            onDaySelected: (selected, focused) {
              setState(() {
                selectedDay = selected;
                focusedDay = focused;
              });
            },
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: _getEventsForDay(selectedDay ?? DateTime.now())
                  .map(
                    (event) => Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.sports, color: Colors.red),
                        title: Text(event.toString()),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
