import 'package:audeeoflutter/screens/onboardingscreen.dart';
import 'package:audeeoflutter/screens/room.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MaterialApp(
      initialRoute: '/onboarding',
      routes: {
        '/': (context) => OnboardingScreen(),
        '/home': (context) => Audeeo(),
        '/room': (context) => Room(),
        '/onboarding': (context) => OnboardingScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Roboto',
        backgroundColor: Colors.white,
      ),
    ),
  );
}

class Audeeo extends StatefulWidget {
  const Audeeo({Key? key}) : super(key: key);

  @override
  _AudeeoState createState() => _AudeeoState();
}

class _AudeeoState extends State<Audeeo> {
  int selectedIndex = 0;
  List<IconData> data = [Icons.home_filled, Icons.add, Icons.notifications];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Audeeo',
              style: TextStyle(
                  color: Color(0XFF06003D),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0XFF06003D),
              size: 30,
            ),
          ),
        ),
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
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.all(20),
      //   child: Material(
      //     elevation: 10,
      //     borderRadius: BorderRadius.circular(10),
      //     color: Color(0XFF06003D),
      //     child: Container(
      //       height: 85,
      //       width: double.infinity,
      //       child: ListView.builder(
      //         itemCount: data.length,
      //         padding: EdgeInsets.symmetric(horizontal: 10),
      //         itemBuilder: (ctx, i) => Padding(
      //           padding: EdgeInsets.symmetric(horizontal: 37),
      //           child: GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 selectedIndex = i;
      //               });
      //             },
      //             child: AnimatedContainer(
      //               duration: Duration(milliseconds: 200),
      //               width: 35,
      //               decoration: BoxDecoration(
      //                 border: i == selectedIndex
      //                     ? Border(
      //                         top: BorderSide(
      //                           width: 3,
      //                           color: Color(0XFF00fe44),
      //                         ),
      //                       )
      //                     : null,
      //               ),
      //               child: Icon(
      //                 data[i],
      //                 size: 35,
      //                 color: i == selectedIndex
      //                     ? Color(0XFF00fe44)
      //                     : Colors.grey[300],
      //               ),
      //             ),
      //           ),
      //         ),
      //         scrollDirection: Axis.horizontal,
      //       ),
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 20,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Color(0XFF06003D),
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0XFF06003D),
        iconSize: 35,
        selectedIconTheme: IconThemeData(
          color: Color(0XFF00fe44),
        ),
        elevation: 10,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'Create New Room',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            Center(
              child: Text(
                'Recommended',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Divider(
              color: Colors.grey[800],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/room');
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 12, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Motivatiobal Hub'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "How to Earn \$60B  In 5 Working Days",
                        style: TextStyle(
                          fontSize: 16.5,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Hosts".toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      // SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 58, 0),
                        child: Divider(color: Colors.black),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.grey[300],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/ame.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Azu Braswell',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.green[100],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/man.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Lesron',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Active',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '692',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Participants',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 12, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Motivatiobal Hub'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "How to Earn \$60B  In 5 Working Days",
                        style: TextStyle(
                          fontSize: 16.5,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Hosts".toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      // SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 58, 0),
                        child: Divider(color: Colors.black),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.grey[300],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/ame.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Azu Braswell',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.green[100],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/man.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Lesron',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Active',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '692',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Participants',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 12, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Motivatiobal Hub'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "How to Earn \$60B  In 5 Working Days",
                        style: TextStyle(
                          fontSize: 16.5,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Hosts".toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      // SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 58, 0),
                        child: Divider(color: Colors.black),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.grey[300],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/ame.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Azu Braswell',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.green[100],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/man.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Lesron',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Active',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '692',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Participants',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 12, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Motivatiobal Hub'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "How to Earn \$60B  In 5 Working Days",
                        style: TextStyle(
                          fontSize: 16.5,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Hosts".toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      // SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 58, 0),
                        child: Divider(color: Colors.black),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.grey[300],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/ame.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Azu Braswell',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.green[100],
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  child: Image.asset(
                                    'assets/man.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Lesron',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Active',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '692',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Participants',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
