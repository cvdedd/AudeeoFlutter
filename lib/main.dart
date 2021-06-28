import 'package:audeeoflutter/screens/HomeScreen.dart';
import 'package:audeeoflutter/screens/notifications.dart';
import 'package:audeeoflutter/screens/onboardingscreen.dart';
import 'package:audeeoflutter/screens/profile.dart';
import 'package:audeeoflutter/screens/room.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onBoarding');
  runApp(
    MaterialApp(
      initialRoute: isViewed != 0 ? '/onboarding' : '/home',
      routes: {
        '/': (context) => Audeeo(),
        '/home': (context) => Audeeo(),
        '/room': (context) => Room(),
        '/onboarding': (context) => OnboardingScreen(),
        '/profile': (context) => Profile(),
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
  List<Widget> pageList = [
    HomeScreen(),
    Room(),
    NotificationScreen(),
  ];
  void _incrementTab(value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onPressed: () {
          _incrementTab(1);
        },
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
        currentIndex: selectedIndex,
        onTap: (value) {
          _incrementTab(value);
        },
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

      body: pageList[selectedIndex],
    );
  }
}
