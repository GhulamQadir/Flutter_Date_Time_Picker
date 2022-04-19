// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DateTime {
  DateTime date = DateTime(2022, 04, 18);
  TimeOfDay time = TimeOfDay(hour: 9, minute: 0);

  pickTime() async {
    TimeOfDay? newTime =
        await showTimePicker(context: context, initialTime: time);
    if (newTime == null) return;
    setState(() {
      time = newTime;
    });
  }
}
