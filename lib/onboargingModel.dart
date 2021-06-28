import 'package:flutter/material.dart';

class OnboardingModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnboardingModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}

List<OnboardingModel> screens = <OnboardingModel>[
  OnboardingModel(
    img: 'assets/img.png',
    text: 'Audeeo 1',
    desc:
        'Lorem Ipsum dolor sit amet consec tur adipis Rerum, fugit.Nobis illo nam impedit quisqua udiandae',
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
  OnboardingModel(
    img: 'assets/img.png',
    text: 'Audeeo 2',
    desc: 'desc',
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
  OnboardingModel(
    img: 'assets/img.png',
    text: 'Audeeo 3',
    desc: 'desc',
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
];
