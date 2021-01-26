import 'package:flutter/material.dart';
class Tv extends StatefulWidget {
  @override
  _TvState createState() => _TvState();
}

class _TvState extends State<Tv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "News a b a",
          style: TextStyle(fontSize: 24,color: Colors.black),
        ),
      ),
    );
  }
}