import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // We're going to define all of our font styles
  // in this method:
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontFamily: 'Assistant',
        fontSize: 40.0,
        color: const Color(0xFF807a6b),
      ),

    // New code:
    // Used for the recipes' title:
    headline2: base.headline2?.copyWith(
      fontFamily: 'Assistant',
      fontSize: 21.0,
      color: const Color(0xFF807A6B),
    ),
    // Used for the recipes' duration:
    caption: base.caption?.copyWith(
    color: const Color(0xFFCCC5AF),
    ),
  );
}

  // We want to override a default light blue theme.
  final ThemeData base = ThemeData.light();

  // And apply changes on it:
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    // New code:
    primaryColor: const Color(0xFFFFF8E1),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    iconTheme: const IconThemeData(
      color: Color(0xFFCCC5AF),
      size: 20.0,
    ),
    // New:
      backgroundColor: Colors.white,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: const Color(0xFF807A6B),
        unselectedLabelColor: const Color(0xFFCCC5AF),
      )
  );
}
