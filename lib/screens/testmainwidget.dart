import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primaryColor: Colors.black12,
        accentColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless'),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
