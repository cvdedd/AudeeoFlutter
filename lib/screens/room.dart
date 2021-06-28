import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  const Room({Key? key}) : super(key: key);

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0XFF06003D), size: 30, //change your color here
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   'Titus',
            //   style: TextStyle(
            //       color: Color(0XFF06003D),
            //       fontSize: 25.0,
            //       fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   'You are in this room',
            //   style: TextStyle(color: Color(0XFF06003D), fontSize: 15),
            // )
          ],
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.arrow_back,
        //       color: Color(0XFF06003D),
        //       size: 30,
        //     ),
        //   ),
        // ),

        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/profile.png',
                  width: 30,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          children: [
            Center(
              child: Text(
                'Motivational Hub'.toUpperCase(),
                style: TextStyle(
                    color: Colors.green[800], fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                'How to earn \$60B in 5 working days',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.green[100],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/man.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Anzele',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.grey[300],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/profile.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Cvdedd',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.green[100],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/man.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Lesron',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.green[100],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/man.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Anzele',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.grey[300],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/profile.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Cvdedd',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.green[100],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/man.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Lesron',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.green[100],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/man.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Anzele',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.grey[300],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/profile.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Cvdedd',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.green[100],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                            child: Image.asset(
                              'assets/man.png',
                              width: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Lesron',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                height: 70,
                width: double.maxFinite,
                color: Color(0XFF06003D),
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Leave Room',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      // bottomSheet: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //   child: Container(
      //     height: 70,
      //     width: double.infinity,
      //     color: Color(0XFF06003D),
      //     child: GestureDetector(
      //       onTap: () {},
      //       child: Center(
      //         child: Text(
      //           'Leave Room',
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
