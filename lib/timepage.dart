import 'package:flutter/material.dart';

class TimePickerNew extends StatefulWidget {
  const TimePickerNew({ Key? key }) : super(key: key);

  @override
  State<TimePickerNew> createState() => _TimePickerNewState();
}

class _TimePickerNewState extends State<TimePickerNew> {
  String? _selectedTime;

  // We don't need to pass a context to the _show() function
  // You can safety use context as below
  Future<void> _show() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Center(
        child: Text(
          _selectedTime != null ? _selectedTime! : 'No time selected!',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: _show, child: const Text('Show Time Picker')),
    );
  }
}