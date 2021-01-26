import 'package:flutter/material.dart';
import 'package:time_picker/time_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: 'home',
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => timepicker(),

      },
    );
  }
  }