import 'package:flutter/material.dart';
import 'package:flutter_date_picker/date_time_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DateTimePicker());
  }
}
