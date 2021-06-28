import 'package:audeeoflutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnBoardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoarding', isViewed);
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 15,
      width: isActive ? 15 : 15,
      decoration: isActive
          ? BoxDecoration(
              color: Color(0XFF06003D),
              border: Border.all(
                color: Color(0XFF06003D),
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            )
          : BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 2.3,
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          width: 40,
                        ),
                        _currentPage != _numPages - 1
                            ? OutlineButton(
                                shape: StadiumBorder(),
                                borderSide: BorderSide(
                                  width: 2.3,
                                  color: Color(0XFF06003D),
                                ),
                                onPressed: () {
                                  _storeOnBoardInfo();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Audeeo()));
                                },
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                    color: Color(0XFF06003D),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : TextButton(
                                onPressed: () => print(''),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Color(0XFF06003D),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 550,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/onb1.png',
                                ),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Center(
                              child: Text(
                                'Audeeo 1',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0XFF06003D),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto-Bold',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Text(
                                'Lorem ipsum dolor sit amet consec tur adipis Rerum, fugit.Nobis illo nam impedit quisqua udiandae',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey[500],
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/onb2.png',
                                ),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                'Audeoo 2',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0XFF06003D),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto-Bold',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Text(
                                'Lorem Ipsum dolor sit amet consec tur adipis Rerum, fugit.Nobis illo nam impedit quisqua udiandae',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey[500],
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/onb3.png',
                                ),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: Text(
                                'Audeeo 3',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0XFF06003D),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto-Bold',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Text(
                                'Lorem Ipsum dolor sit amet consec tur adipis Rerum, fugit.Nobis illo nam impedit quisqua udiandae',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey[500],
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? GestureDetector(
              onTap: () async {
                await _storeOnBoardInfo();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Audeeo()));
              },
              child: Container(
                height: 70,
                width: double.infinity,
                color: Color(0XFF06003D),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
