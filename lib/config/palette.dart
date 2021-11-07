import 'package:flutter/material.dart';

class Palette {
  // static const Color scaffold = Color(0xFFF0F2F5);
  static const Color scaffold = Color(0xFFECE9E9);
  static const darkScaffold = Color(0xFF1c1c1c);
  static const mainWhite = Color(0xffffffff);
  static const mainBlack = Color(0xff262626);
  static const mainGrey = Color(0xff505050);

  static const Color facebookBlue = Color(0xFF1777F2);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
