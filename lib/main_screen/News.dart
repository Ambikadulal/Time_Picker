import 'package:flutter/material.dart';
class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
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