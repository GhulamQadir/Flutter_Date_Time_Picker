// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime date = DateTime(2022, 04, 18);
  TimeOfDay time = TimeOfDay(hour: 9, minute: 0);

  pickDate() async {
    DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (newDate == null) return;
    setState(() {
      date = newDate;
    });
  }

  pickTime() async {
    TimeOfDay? newTime =
        await showTimePicker(context: context, initialTime: time);
    if (newTime == null) return;
    setState(() {
      time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Flutter date picker")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${date.year}/${date.month}/${date.day}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: pickDate, child: Text("Select date")),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "${time.hour}:${time.minute}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: pickTime, child: Text("Select time")),
                ],
              ),
            )));
  }
}
