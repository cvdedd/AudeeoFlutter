import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0XFF06003D), size: 30, //change your color here
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              color: Color(0XFF06003D),
              fontSize: 25.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        // actions: [
        //   Padding(
        //       padding: EdgeInsets.only(right: 20.0),
        //       child: GestureDetector(
        //         onTap: () {},
        //         child: Image.asset(
        //           'assets/profile.png',
        //           width: 30,
        //         ),
        //       )),
        // ],
      ),
      body: Center(
        child: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
