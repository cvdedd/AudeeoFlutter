import 'package:flutter/material.dart';

class Createroom extends StatefulWidget {
  const Createroom({Key? key}) : super(key: key);

  @override
  _CreateroomState createState() => _CreateroomState();
}

class _CreateroomState extends State<Createroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('create new room'),
      ),
      body: Center(
        child: Text(
          'Create  Room',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
