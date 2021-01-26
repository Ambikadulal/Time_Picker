import 'package:flutter/material.dart';
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
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