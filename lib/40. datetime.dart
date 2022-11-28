import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _selectDate(inContext) async {
    DateTime? selectedDate = await showDatePicker(
      context: inContext,
      initialDate: DateTime.now(),
      firstDate: DateTime(2017),
      lastDate: DateTime(2023),
    );
    print(selectedDate);
  }

  Future<void> _selectTime(inContext) async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: inContext,
      initialTime: TimeOfDay.now(),
    );
    print(selectedTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50),
          ElevatedButton(
            child: Text("Test DatePicker"),
            onPressed: () => _selectDate(context),
          ),
          ElevatedButton(
            child: Text("Test TimePicker"),
            onPressed: () => _selectTime(context),
          )
        ],
      ),
    );
  }
}
